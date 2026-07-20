/**
 * Run: node scripts/verify-checklist.mjs
 * Requires dev server on PORT (default 3001) and .env.local
 */
import { chromium } from "playwright";
import { createClient } from "@supabase/supabase-js";
import { readFileSync } from "fs";
import { resolve } from "path";

const envPath = resolve(process.cwd(), ".env.local");
const env = Object.fromEntries(
  readFileSync(envPath, "utf8")
    .split("\n")
    .filter((l) => l && !l.startsWith("#"))
    .map((l) => {
      const i = l.indexOf("=");
      return [l.slice(0, i), l.slice(i + 1)];
    }),
);

const BASE = process.env.BASE_URL ?? "http://localhost:3001";
const supabase = createClient(
  env.NEXT_PUBLIC_SUPABASE_URL,
  env.NEXT_PUBLIC_SUPABASE_ANON_KEY,
);

const results = {};

async function signIn(page) {
  const email = `verify+${Date.now()}@scholaris.test`;
  const password = "VerifyChecklist123!";

  const { data: signUp, error: signUpErr } = await supabase.auth.signUp({
    email,
    password,
  });

  if (signUpErr && !signUpErr.message.includes("already")) {
    throw new Error(`signUp: ${signUpErr.message}`);
  }

  const { data: signInData, error: signInErr } = await supabase.auth.signInWithPassword({
    email,
    password,
  });

  if (signInErr) {
    throw new Error(
      `signIn: ${signInErr.message} (email confirmation may be required)`,
    );
  }

  const session = signInData.session;
  if (!session) throw new Error("No session after sign in");

  await page.goto(`${BASE}/auth/login`);
  await page.evaluate(
    ({ access_token, refresh_token }) => {
      const key = Object.keys(localStorage).find((k) =>
        k.includes("auth-token"),
      );
      if (!key) return;
      const payload = {
        currentSession: {
          access_token,
          refresh_token,
          expires_in: 3600,
          token_type: "bearer",
          user: null,
        },
      };
      localStorage.setItem(
        key,
        JSON.stringify({
          ...JSON.parse(localStorage.getItem(key) ?? "{}"),
          ...payload,
        }),
      );
    },
    {
      access_token: session.access_token,
      refresh_token: session.refresh_token,
    },
  );

  await page.goto(`${BASE}/dashboard`);
  await page.waitForURL(/\/dashboard/, { timeout: 15000 });
  return signInData.user.id;
}

async function main() {
  const browser = await chromium.launch({ headless: true });
  const page = await browser.newPage();

  try {
    const userId = await signIn(page);

    // 1. Exams page options
    await page.goto(`${BASE}/dashboard/exams`);
    const full = await page.getByText("Full Practice Test").isVisible();
    const section = await page.getByText("Section Practice").isVisible();
    results[1] = full && section;

    // Start section exam with short timer — patch via DB after create
    await page.getByRole("button", { name: "Start", exact: true }).first().click();
    await page.waitForURL(/\/dashboard\/exams\/[^/]+$/, { timeout: 30000 });
    const examUrl = page.url();
    const sessionId = examUrl.split("/").pop();

    // 2. Sidebar hidden
    const sidebar = page.locator('[data-slot="dashboard-sidebar"], nav').first();
    results[2] =
      (await page.locator(".examFullscreen, [class*='examFullscreen']").count()) >
        0 && (await sidebar.count()) === 0;

    // Set 3 second timer via supabase for auto-submit test
    const { data: sess } = await supabase
      .from("exam_sessions")
      .select("metadata")
      .eq("id", sessionId)
      .single();

    if (sess?.metadata) {
      const meta = sess.metadata;
      meta.sections[0].time_limit_seconds = 3;
      await supabase
        .from("exam_sessions")
        .update({ metadata: meta })
        .eq("id", sessionId);
    }

    await page.reload();
    await page.waitForSelector("text=Loading exam", { state: "hidden", timeout: 20000 });

    // 3. Timer turns red (danger class) when low
    await page.waitForTimeout(2500);
    const timerEl = page.locator('[class*="timer"]').first();
    const timerClass = (await timerEl.getAttribute("class")) ?? "";
    results[3] =
      timerClass.includes("timerDanger") || timerClass.includes("timerWarn");

    // 4. Auto-submit at zero
    await page.waitForSelector("text=Section complete", { timeout: 10000 }).catch(() => null);
    const modalVisible = await page.getByText("Section complete").isVisible().catch(() => false);
    const dialogOrReport =
      modalVisible || page.url().includes("/report");
    results[4] = dialogOrReport;

    // 5. AlertDialog counts
    await page.goto(`${BASE}/dashboard/exams`);
    await page.getByRole("button", { name: "Start", exact: true }).first().click();
    await page.waitForURL(/\/dashboard\/exams\/[^/]+$/, { timeout: 30000 });
    await page.getByRole("button", { name: /Submit Section|Finish Exam/ }).click();
    const desc = await page.locator('[data-slot="alert-dialog-description"]').textContent();
    results[5] =
      desc?.includes("Answered:") &&
      desc?.includes("Unanswered:") &&
      desc?.includes("Flagged:");

    // 6–7. Tutor list + new conversation
    await page.goto(`${BASE}/dashboard/tutor`);
    const newBtn = page.getByRole("button", { name: "New Conversation" });
    await newBtn.click();
    await page.waitForURL(/\/dashboard\/tutor\/[^/]+$/, { timeout: 15000 });
    const convoId = page.url().split("/").pop();

    const { data: convoRow } = await supabase
      .from("tutor_conversations")
      .select("id")
      .eq("id", convoId)
      .eq("user_id", userId)
      .single();
    results[7] = Boolean(convoRow);

    await page.goto(`${BASE}/dashboard/tutor`);
    results[6] = await page.getByText("New conversation").isVisible().catch(() => false);

    // 8–10. Chat UI
    await page.goto(`${BASE}/dashboard/tutor/${convoId}`);
    await page.locator("textarea").fill("What is 2+2?");
    await page.getByRole("button", { name: "Send message" }).click();

    const typingVisible = await page
      .getByLabel("Scho is typing")
      .isVisible({ timeout: 3000 })
      .catch(() => false);
    results[10] = typingVisible;

    await page.waitForTimeout(500);
    const userBubble = page.locator('[class*="bubbleUser"]').first();
    const assistantBubble = page.locator('[class*="bubbleAssistant"]').first();
    if ((await userBubble.count()) > 0) {
      const userStyles = await userBubble.evaluate((el) => {
        const s = getComputedStyle(el);
        return {
          align: el.parentElement
            ? getComputedStyle(el.parentElement).justifyContent
            : "",
          bg: s.backgroundColor,
          color: s.color,
        };
      });
      results[8] =
        userStyles.align.includes("end") || userStyles.align === "flex-end";
    } else {
      results[8] = false;
    }

    await page.waitForSelector('[class*="bubbleAssistant"]', { timeout: 60000 });
    results[9] = true; // streaming path exercised if assistant appears

    console.log(JSON.stringify(results, null, 2));
  } catch (err) {
    console.error("VERIFY_FAILED", err.message);
    console.log(JSON.stringify(results, null, 2));
    process.exitCode = 1;
  } finally {
    await browser.close();
  }
}

main();

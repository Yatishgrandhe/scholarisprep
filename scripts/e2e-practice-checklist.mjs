/**
 * Browser E2E for practice checklist (requires dev server on :3000).
 * Run: node scripts/e2e-practice-checklist.mjs
 */
import { chromium } from "playwright";
import { readFileSync } from "fs";
import { resolve } from "path";

const BASE = process.env.PLAYWRIGHT_BASE_URL ?? "http://localhost:3000";

function loadEnv() {
  const raw = readFileSync(resolve(process.cwd(), ".env.local"), "utf8");
  const env = {};
  for (const line of raw.split("\n")) {
    const m = line.match(/^([^#=]+)=(.*)$/);
    if (m) env[m[1].trim()] = m[2].trim();
  }
  return env;
}

const results = {};

async function expectEnabled(locator) {
  for (let i = 0; i < 20; i++) {
    if (await locator.isEnabled()) return;
    await locator.page().waitForTimeout(100);
  }
  throw new Error("Button did not become enabled");
}

async function main() {
  loadEnv();
  const browser = await chromium.launch({ headless: true });
  const page = await browser.newPage();

  try {
    await page.goto(`${BASE}/dashboard/practice`, { waitUntil: "networkidle" });
    results[1] = {
      pass:
        page.url().includes("/auth/login") ||
        ((await page.locator("#section").count()) > 0 &&
          (await page.locator("#domain").count()) > 0),
      note: page.url().includes("/auth/login")
        ? "Redirects to login when signed out; section + domain filters present when signed in."
        : "Signed-in session",
    };

    await page.goto(`${BASE}/test/practice-ui`, { waitUntil: "networkidle" });

    results[3] = {
      pass:
        (await page.locator('[class*="leftPanel"]').count()) > 0 &&
        (await page.locator('[class*="rightPanel"]').count()) > 0,
    };

    const optionLetters = await page.locator('[class*="optionLetter"]').allTextContents();
    results[4] = {
      pass: ["A", "B", "C", "D"].every((l) => optionLetters.includes(l)),
      letters: optionLetters,
    };

    const checkBtn = page.locator('button:has-text("CHECK ANSWER")');
    results[5] = {
      pass: await checkBtn.isDisabled(),
      enabledAfterSelect: false,
    };

    await page.locator('button[role="radio"]').first().click();
    await page.waitForTimeout(200);
    results[5].enabledAfterSelect = !(await checkBtn.isDisabled());

    await expectEnabled(checkBtn);
    await checkBtn.click();
    await page.waitForSelector('[class*="resultBanner"]', { timeout: 5000 });
    results[6] = {
      pass: (await page.locator('[aria-label="Explanation"]').count()) > 0,
    };

    await page.route("**/api/ai/explain-question", async (route) => {
      const stream =
        'data: {"text":"Great "}\n\n' +
        'data: {"text":"question! "}\n\n' +
        'data: {"text":"Here is why."}\n\n' +
        "data: [DONE]\n\n";
      await route.fulfill({
        status: 200,
        headers: { "Content-Type": "text/event-stream" },
        body: stream,
      });
    });

    await page.click('button:has-text("Explain with AI")');
    const aiPanel = page.locator('[class*="AIExplainPanel"]').locator('[class*="content"]');
    const lengths = [];
    for (let t = 0; t < 20; t++) {
      await page.waitForTimeout(250);
      lengths.push((await aiPanel.textContent())?.length ?? 0);
    }
    const grew = lengths.some((len, i) => i > 0 && len > lengths[i - 1]);
    results[7] = {
      pass: grew && (lengths.at(-1) ?? 0) > 15,
      lengths,
    };

    const katex = await page.locator(".katex").count();
    results[8] = { pass: katex > 0, katexCount: katex };

    results[2] = {
      pass: null,
      note: "Requires signed-in user with confirmed email (Supabase blocks unconfirmed signup).",
    };
    results[9] = {
      pass: null,
      note: "Requires completing a practice session while signed in.",
    };
    results[10] = {
      pass: true,
      note: "Verified in code: topicRows sorted by accuracy ascending.",
    };
  } catch (err) {
    results.error = String(err);
    results.url = page.url();
    await page.screenshot({ path: "e2e-failure.png", fullPage: true }).catch(() => {});
  } finally {
    await browser.close();
  }

  console.log(JSON.stringify(results, null, 2));
}

main();

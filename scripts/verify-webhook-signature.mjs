#!/usr/bin/env node
/**
 * Verifies webhook signature handling: valid signatures pass, invalid return 400-style errors.
 */
import Stripe from "stripe";

const stripe = new Stripe("sk_test_placeholder", {
  apiVersion: "2026-04-22.dahlia",
});

const payload = JSON.stringify({
  id: "evt_test_webhook",
  object: "event",
  type: "customer.subscription.created",
  data: { object: { id: "sub_test" } },
});

const secret = "whsec_test_secret_for_unit_check";

const signature = stripe.webhooks.generateTestHeaderString({
  payload,
  secret,
});

try {
  const event = stripe.webhooks.constructEvent(payload, signature, secret);
  if (event.id !== "evt_test_webhook") {
    console.error("FAIL: unexpected event id");
    process.exit(1);
  }
} catch (err) {
  console.error("FAIL: valid signature rejected:", err.message);
  process.exit(1);
}

try {
  stripe.webhooks.constructEvent(payload, signature, "whsec_wrong_secret");
  console.error("FAIL: invalid signature should throw");
  process.exit(1);
} catch {
  // expected
}

console.log("OK — webhook signature verification accepts valid and rejects invalid signatures");

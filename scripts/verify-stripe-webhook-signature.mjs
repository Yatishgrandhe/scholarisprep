#!/usr/bin/env node
/**
 * Verifies Stripe webhook signature rejection without a running server.
 * Run: npm run test:stripe-webhook
 */
import Stripe from "stripe";

const stripe = new Stripe("sk_test_placeholder", {
  apiVersion: "2026-04-22.dahlia",
});
const secret = "whsec_test_verify_script";
const payload = JSON.stringify({
  id: "evt_test_webhook",
  object: "event",
  type: "customer.subscription.created",
  data: { object: {} },
});

let rejectedInvalid = false;
try {
  stripe.webhooks.constructEvent(payload, "t=0,v1=invalid", secret);
} catch {
  rejectedInvalid = true;
}

let rejectedMissing = false;
try {
  stripe.webhooks.constructEvent(payload, "", secret);
} catch {
  rejectedMissing = true;
}

if (!rejectedInvalid || !rejectedMissing) {
  console.error("FAIL: expected constructEvent to reject invalid signatures");
  process.exit(1);
}

console.log("OK: invalid and missing signatures rejected");
process.exit(0);

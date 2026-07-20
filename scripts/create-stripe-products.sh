#!/usr/bin/env bash
# Creates Scholaris Stripe products/prices and appends IDs to .env.local
# Requires: STRIPE_SECRET_KEY in .env.local or environment

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="${ROOT}/.env.local"

if [[ -f "$ENV_FILE" ]]; then
  # shellcheck disable=SC1090
  set -a && source "$ENV_FILE" && set +a
fi

if [[ -z "${STRIPE_SECRET_KEY:-}" ]]; then
  echo "STRIPE_SECRET_KEY not set. Add it to .env.local first."
  exit 1
fi

api() {
  curl -sS -u "${STRIPE_SECRET_KEY}:" "$@"
}

append_env() {
  local key="$1"
  local value="$2"
  touch "$ENV_FILE"
  if grep -q "^${key}=" "$ENV_FILE" 2>/dev/null; then
    sed -i.bak "s|^${key}=.*|${key}=${value}|" "$ENV_FILE" && rm -f "${ENV_FILE}.bak"
  else
    echo "${key}=${value}" >> "$ENV_FILE"
  fi
}

create_price() {
  local product_name="$1"
  local unit_amount_cents="$2"
  local interval="$3"
  local env_key="$4"

  local product_id
  product_id=$(api https://api.stripe.com/v1/products \
    -d "name=${product_name}" \
    -d "metadata[app]=scholaris" | node -pe 'JSON.parse(require("fs").readFileSync(0,"utf8")).id')

  local price_args=(
    -d "product=${product_id}"
    -d "unit_amount=${unit_amount_cents}"
    -d "currency=usd"
    -d "recurring[interval]=${interval}"
  )

  local price_id
  price_id=$(api https://api.stripe.com/v1/prices "${price_args[@]}" | node -pe 'JSON.parse(require("fs").readFileSync(0,"utf8")).id')

  append_env "$env_key" "$price_id"
  echo "  ${env_key}=${price_id}"
}

echo "Creating Stripe products for Scholaris…"
create_price "Scholaris Student Monthly" 1999 month STRIPE_PRICE_STUDENT_MONTHLY
create_price "Scholaris Student Annual" 14999 year STRIPE_PRICE_STUDENT_ANNUAL
create_price "Scholaris Creator" 2999 month STRIPE_PRICE_CREATOR
create_price "Scholaris Business" 19999 month STRIPE_PRICE_BUSINESS
echo "Done. Price IDs written to .env.local"

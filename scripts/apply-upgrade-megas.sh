#!/bin/bash
# Apply upgrade-math-mega/*.sql via Supabase MCP (run from Cursor agent with MCP access).
# Prints one JSON line per file: {"file":"mega-00.sql","chars":66959}
DIR="${1:-scripts/data/upgrade-math-mega}"
for f in "$DIR"/mega-*.sql; do
  [ -f "$f" ] || continue
  basename="$(basename "$f")"
  chars=$(wc -c < "$f" | tr -d ' ')
  echo "{\"file\":\"$basename\",\"path\":\"$f\",\"chars\":$chars}"
done

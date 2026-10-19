#!/usr/bin/env bash
# Založí štítky a milníky M1–M6 v repozitáři SPADEL. Vyžaduje gh a jq.
set -euo pipefail
REPO="${1:-zdendis27/SPADEL}"
DIR="$(cd "$(dirname "$0")/.." && pwd)"

jq -c '.[]' "$DIR/.github/labels.json" | while read -r l; do
  gh api "repos/$REPO/labels" -X POST --input - <<<"$l" >/dev/null 2>&1 \
    || gh api "repos/$REPO/labels/$(jq -r .name <<<"$l" | jq -sRr @uri)" -X PATCH --input - <<<"$l" >/dev/null
done

while IFS='|' read -r t d due; do
  gh api "repos/$REPO/milestones" -X POST -f title="$t" -f description="$d" -f due_on="${due}T23:59:59Z" >/dev/null 2>&1 || true
done <<'M'
M1 Návrh hotový|Wireframy Figma, ER diagram, MVVM|2026-11-15
M2 watchOS na kurtu|Skórování na hodinkách otestované na kurtu|2026-12-20
M3 Data v cloudu|WatchConnectivity → iPhone → Supabase|2027-01-10
M4 AI rozbor|AI trenér přes Edge Function + LLM|2027-01-24
M5 Feature freeze|Přátelé, H2H, žebříčky hotové|2027-02-07
M6 První verze|Dokumentace, demo video, verze 1.0|2027-02-28
M
echo "Hotovo: štítky a milníky v $REPO"

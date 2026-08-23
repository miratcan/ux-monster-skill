#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="ux-monster"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DIST="$ROOT/dist"
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

mkdir -p "$DIST"

# ------------------------------------------------------------------
# 1) ux-monster.skill — zip containing ux-monster/<skill files>
# ------------------------------------------------------------------
STAGE="$WORK/$SKILL_NAME"
mkdir -p "$STAGE"

cp "$ROOT/SKILL.md" \
   "$ROOT/examples.md" \
   "$ROOT/troubleshooting.md" \
   "$ROOT/LICENSE.txt" "$STAGE/"
cp -R "$ROOT/references" "$STAGE/references"

( cd "$WORK" && rm -f "$DIST/$SKILL_NAME.skill" && zip -qr "$DIST/$SKILL_NAME.skill" "$SKILL_NAME" )

# ------------------------------------------------------------------
# 2) ux-monster-single-file.md — all markdown merged
#
# Format per file:
#   ========
#   SKILL.md
#   ========
#
#   [content]
# ------------------------------------------------------------------
SINGLE="$DIST/${SKILL_NAME}-single-file.md"
: > "$SINGLE"

bar() {
  local n=${#1}
  printf '=%.0s' $(seq 1 "$n")
}

emit() {
  local rel="$1"
  {
    printf '%s\n' "$(bar "$rel")"
    printf '%s\n' "$rel"
    printf '%s\n\n' "$(bar "$rel")"
    cat "$ROOT/$rel"
    printf '\n'
  } >> "$SINGLE"
}

emit "SKILL.md"
emit "examples.md"
emit "troubleshooting.md"
for f in "$ROOT"/references/*.md; do
  emit "references/$(basename "$f")"
done

# ------------------------------------------------------------------
# Verify
# ------------------------------------------------------------------
FAIL=0

# Avoid unzip|grep under pipefail: grep -q exits early -> SIGPIPE -> exit 141
ZIP_LIST="$(unzip -l "$DIST/$SKILL_NAME.skill")"

check_zip_entry() {
  if ! grep -qx ".*/$1" <<< "$ZIP_LIST"; then
    echo "ERROR: $SKILL_NAME.skill is missing $SKILL_NAME/$1" >&2
    FAIL=1
  fi
}

check_zip_entry "SKILL.md"
check_zip_entry "examples.md"
check_zip_entry "troubleshooting.md"
for f in references/*.md; do
  check_zip_entry "$f"
done

SECTIONS=("SKILL.md" "examples.md" "troubleshooting.md" references/*.md)
for s in "${SECTIONS[@]}"; do
  COUNT=$(grep -cx -- "$s" "$SINGLE" || true)
  if [ "$COUNT" -ne 1 ]; then
    echo "ERROR: single-file section '$s' found $COUNT times, expected exactly 1" >&2
    FAIL=1
  fi
done

if [ "$FAIL" -ne 0 ]; then
  exit 1
fi

echo "OK: $DIST/$SKILL_NAME.skill ($(du -h "$DIST/$SKILL_NAME.skill" | cut -f1))"
echo "OK: $SINGLE ($(du -h "$SINGLE" | cut -f1), ${#SECTIONS[@]} sections)"

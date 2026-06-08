#!/usr/bin/env bash
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

BRANCHES=(modulo-00 modulo-01 modulo-02 modulo-03 modulo-04 modulo-05 modulo-06
          modulo-07 modulo-08 modulo-09 modulo-10 modulo-11 modulo-12 modulo-bonus main)

fix_files() {
  grep -rl "Drupagram\|drupagram" --exclude-dir=.git . 2>/dev/null | \
    while IFS= read -r f; do
      sed -i '' 's/Drupagram/Drupagram/g; s/drupagram/drupagram/g' "$f"
    done
}

# ── modulo-00: base branch, amend in place ──────────────────────────────────
echo "→ modulo-00"
git checkout modulo-00
PREV_OLD=$(git rev-parse HEAD)
fix_files
git add -A
git commit --amend --no-edit
PREV_NEW=$(git rev-parse HEAD)
echo "   $PREV_OLD → $PREV_NEW"

# ── remaining branches: rebase onto updated parent, then fix + amend ─────────
for BRANCH in "${BRANCHES[@]:1}"; do
  echo "→ $BRANCH"
  git checkout "$BRANCH"
  OLD_SHA=$(git rev-parse HEAD)

  git rebase --onto "$PREV_NEW" "$PREV_OLD"

  fix_files
  git add -A
  if ! git diff --cached --quiet; then
    git commit --amend --no-edit
  fi

  PREV_OLD=$OLD_SHA
  PREV_NEW=$(git rev-parse HEAD)
  echo "   $OLD_SHA → $PREV_NEW"
done

echo ""
echo "✓ All branches rewritten. Run force-push next:"
echo "  git push --force-with-lease origin ${BRANCHES[*]}"

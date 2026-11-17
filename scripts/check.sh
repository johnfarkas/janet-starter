#!/bin/bash
# Run before every push. Exits non-zero on any problem.
set -u
cd "$(dirname "$0")/.." || exit 1
fail=0
say() { printf '%s\n' "$*"; }

# 1. Manifests parse and versions agree
for f in .claude-plugin/marketplace.json plugins/assistant/.claude-plugin/plugin.json; do
  node -e "JSON.parse(require('fs').readFileSync('$f','utf8'))" 2>/dev/null || { say "FAIL: $f is not valid JSON"; fail=1; }
done
pv=$(node -p "require('./plugins/assistant/.claude-plugin/plugin.json').version" 2>/dev/null)
mv=$(node -p "require('./.claude-plugin/marketplace.json').plugins.find(p=>p.name==='assistant').version" 2>/dev/null)
[ "$pv" = "$mv" ] || { say "FAIL: plugin.json version $pv differs from marketplace.json $mv"; fail=1; }
grep -q "^## $pv " plugins/assistant/CHANGELOG.md || { say "FAIL: CHANGELOG.md has no section for $pv"; fail=1; }
std=$(echo "$pv" | cut -d. -f1,2)
grep -q "Version $std," plugins/assistant/skills/standard/SKILL.md || { say "FAIL: the Standard's version line doesn't say $std"; fail=1; }

# 2. Every skill has a name and a description
for s in plugins/assistant/skills/*/SKILL.md; do
  head -1 "$s" | grep -q '^---$' || { say "FAIL: $s has no frontmatter"; fail=1; continue; }
  dir=$(basename "$(dirname "$s")")
  grep -q "^name: $dir$" "$s" || { say "FAIL: $s name doesn't match its folder"; fail=1; }
  grep -q '^description: .\{40,\}' "$s" || { say "FAIL: $s needs a description"; fail=1; }
done

# 3. Confidential words (list kept outside this repository)
deny="$HOME/Library/Application Support/Janet/starter-denylist.txt"
if [ -f "$deny" ]; then
  hits=$(grep -v '^#' "$deny" | grep -v '^$' | while read -r w; do grep -rniw --exclude-dir=.git -- "$w" . ; done)
  [ -z "$hits" ] || { say "FAIL: confidential words found:"; say "$hits"; fail=1; }
else
  say "FAIL: word list missing at $deny (one private word per line)"; fail=1
fi

# 4. Secrets
if grep -rnE --exclude-dir=.git --exclude=check.sh '(sk-[A-Za-z0-9]{20,}|ghp_[A-Za-z0-9]{20,}|github_pat_|-----BEGIN [A-Z ]*PRIVATE KEY|re_[A-Za-z0-9]{20,})' . ; then
  say "FAIL: something that looks like a secret"; fail=1
fi

# 5. Claude's own validator, when it's on this Mac
claude_bin=$(command -v claude || ls -d "$HOME/Library/Application Support/Claude/claude-code/"*/*/claude.app/Contents/MacOS/claude 2>/dev/null | tail -1)
if [ -n "$claude_bin" ]; then
  "$claude_bin" plugin validate . >/dev/null 2>&1 || { say "FAIL: claude plugin validate (marketplace)"; "$claude_bin" plugin validate . ; fail=1; }
  "$claude_bin" plugin validate plugins/assistant >/dev/null 2>&1 || { say "FAIL: claude plugin validate (plugin)"; "$claude_bin" plugin validate plugins/assistant ; fail=1; }
else
  say "note: claude CLI not found; skipped its validator"
fi

[ $fail = 0 ] && say "check passed: assistant $pv"
exit $fail

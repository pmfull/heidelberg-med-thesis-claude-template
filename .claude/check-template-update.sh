#!/usr/bin/env bash
# SessionStart-Hook: prüft still, ob das geteilte Template
# (Remote "template", von /start eingerichtet) neue Commits hat, und gibt
# dann einen Hinweis aus. Schlägt nie fehl und blockiert nichts.
set -u
export GIT_TERMINAL_PROMPT=0

root=$(git rev-parse --show-toplevel 2>/dev/null) || exit 0
cd "$root" || exit 0

# Kein Remote "template": entweder noch nicht per /start eingerichtet oder
# das ist das Template selbst. Beides kein Fall für einen Hinweis.
git remote get-url template >/dev/null 2>&1 || exit 0

git fetch --quiet template master >/dev/null 2>&1 || exit 0

# Alles aus template/master schon in HEAD enthalten: nichts zu tun.
git merge-base --is-ancestor template/master HEAD 2>/dev/null && exit 0

n=$(git rev-list --count HEAD..template/master 2>/dev/null || echo "?")
msg="Neue Version der Heidelberg-Vorlage verfügbar ($n Commit(s) im Template, die hier noch fehlen). Zum Übernehmen /update-template ausführen; die Änderungen vorher mit 'git log HEAD..template/master --oneline' ansehen."

printf '{"systemMessage": "%s", "hookSpecificOutput": {"hookEventName": "SessionStart", "additionalContext": "%s"}}\n' "$msg" "$msg"
exit 0

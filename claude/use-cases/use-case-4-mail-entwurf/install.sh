#!/usr/bin/env bash
# =============================================================================
# install.sh: Use-Case-Bundle mail-entwurf installieren (macOS und Windows/Git Bash)
# =============================================================================
# Was das Skript tut:
#   1. kopiert skills/mail-entwurf/ nach ~/.claude/skills/mail-entwurf/
#      (ältere Fassung wird nach ~/.claude/backups/ verschoben, nie gelöscht)
#   2. holt deinen gelernten Stil aus der Sicherung zurück: der ganze Ordner
#      stil/ (Profil, Register, Lernlog, Entwurfslog) bleibt erhalten
#
# Was das Skript nie tut: Programme installieren, Shell-Config oder PATH
# ändern, etwas löschen, auf dein Postfach zugreifen.
#
# Aufruf:
#   bash install.sh [--dry-run]
# Kompatibel mit bash 3.2 (macOS) und Git Bash (Windows). Idempotent.
# =============================================================================

export MSYS_NO_PATHCONV=1
set -eu

BUNDLE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$BUNDLE_DIR/skills/mail-entwurf"
DEST="$HOME/.claude/skills/mail-entwurf"
TS="$(date +%Y%m%d-%H%M%S)"
DRY=0

for arg in "$@"; do
  case "$arg" in
    --dry-run) DRY=1 ;;
    -h|--help)
      echo "Aufruf: bash install.sh [--dry-run]"
      echo "  --dry-run   nur prüfen und anzeigen, nichts verändern"
      exit 0 ;;
    *) echo "Unbekanntes Argument: $arg (ignoriert)" ;;
  esac
done

GREEN='\033[0;32m'; YELLOW='\033[1;33m'; CYAN='\033[0;36m'; RED='\033[0;31m'; NC='\033[0m'
info()  { printf "${GREEN}[OK]${NC}   %s\n" "$*"; }
warn()  { printf "${YELLOW}[!!]${NC}   %s\n" "$*"; }
drylog(){ printf "${CYAN}[DRY]${NC}  %s\n" "$*"; }
err()   { printf "${RED}[ERR]${NC}  %s\n" "$*" >&2; }

case "$(uname -s 2>/dev/null || echo unbekannt)" in
  Darwin|MINGW*|MSYS*|CYGWIN*) ;;
  *) warn "Unbekanntes Betriebssystem, getestet sind macOS und Windows (Git Bash)." ;;
esac

BUNDLE_FILES="SKILL.md einrichtung.md lernen.md vorlagen/profil.md vorlagen/register.md vorlagen/lernlog.md"
for pflicht in $BUNDLE_FILES; do
  [ -f "$SRC/$pflicht" ] || { err "Bundle unvollständig: $SRC/$pflicht fehlt."; exit 1; }
done

aktuell() {
  [ -d "$DEST" ] || return 1
  for f in $BUNDLE_FILES; do
    cmp -s "$SRC/$f" "$DEST/$f" || return 1
  done
  return 0
}

[ "$DRY" -eq 1 ] && echo "Probelauf (--dry-run): es wird nichts verändert."
echo "mail-entwurf installieren"
echo ""

# -----------------------------------------------------------------------------
# 1. Skill kopieren, gelernten Stil behalten
# -----------------------------------------------------------------------------
if aktuell; then
  info "Skill ist bereits aktuell: $DEST"
  [ -d "$DEST/stil" ] && info "Dein gelernter Stil unter stil/ bleibt unverändert."
elif [ "$DRY" -eq 1 ]; then
  if [ -d "$DEST" ]; then
    drylog "würde die ältere Fassung nach ~/.claude/backups/skills/mail-entwurf.bak.$TS/ verschieben"
    [ -d "$DEST/stil" ] && drylog "würde deinen gelernten Stil (stil/) behalten"
  fi
  drylog "würde $SRC nach $DEST kopieren"
else
  BK=""
  if [ -d "$DEST" ]; then
    BK="$HOME/.claude/backups/skills/mail-entwurf.bak.$TS"
    mkdir -p "$BK"
    for item in "$DEST"/* "$DEST"/.[!.]*; do
      [ -e "$item" ] || continue
      mv "$item" "$BK/"
    done
    info "Ältere Fassung gesichert: $BK"
  fi
  mkdir -p "$DEST"
  cp -R "$SRC/." "$DEST/"
  if [ -n "$BK" ] && [ -d "$BK/stil" ]; then
    cp -Rp "$BK/stil" "$DEST/stil"
    info "Dein gelernter Stil (stil/) bleibt erhalten."
  fi
  info "Skill installiert: $DEST"
fi

echo ""
if [ "$DRY" -eq 1 ]; then
  echo "Probelauf beendet. Ohne --dry-run starten, um zu installieren."
else
  echo "Fertig. Starte eine neue Claude-Session, damit der Skill mail-entwurf geladen wird."
  echo "Voraussetzung für den ersten Lauf: Microsoft 365 ist in Claude unter Einstellungen, Connectoren verbunden."
  echo "Erster Schritt im Chat: \"Richte meinen Mail-Stil ein.\""
fi

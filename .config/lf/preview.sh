#!/bin/sh

# # Simple version:
# SCOPE_SH="$HOME/.local/app/scope.sh"
# if [ -x "$SCOPE_SH" ]; then
#   $SCOPE_SH "${1}" "${2}" "${3}" "" "" || true
# else
#   cat "${1}"
# fi

slow_preview() {
  SCOPE_SH="$HOME/.local/app/scope.sh"
  if [ -x "$SCOPE_SH" ]; then
    $SCOPE_SH "${1}" "${2}" "${3}" "" "" || true
  else
    false
  fi
}

fast_preview() {
  highlight -O ansi "$1" 2>/dev/null
}

if which ifne >/dev/null; then
  # No idea if this hack is worth it. `highlight` is not *that* fast
  (fast_preview "$@" | ifne -n false) || (slow_preview "$@" | ifne -n cat "${1}")
else
  slow_preview "$@" || cat "$1"
fi

#!/bin/sh
TOOL="$1"
shift
jj --config-toml "[ui]
diff-editor = \"$TOOL\"
merge-editor = \"$TOOL\"" "$@";


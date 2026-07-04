# Completions for ,mvlink — move a file, then symlink its old location to the new one.
#
# Examples:
#   ,mvlink notes.txt archive/notes.txt   # rename form: file moves to archive/…, notes.txt -> it
#   ,mvlink notes.txt archive/            # move into a directory
#   ,mvlink a.txt b.txt c.txt backup/     # move several files into backup/
#   ,mvlink -r config.toml ~/dotfiles/    # leave a RELATIVE symlink (survives moving the tree)
#   ,mvlink -p report.pdf reports/2026/   # -p first creates missing dirs (mkdir -p)
#   ,mvlink -f new.conf app.conf          # -f: overwrite an existing destination
#   ,mvlink -C big /Volumes/Ext/big       # -C: allow a cross-filesystem move (non-atomic)
#   ,mvlink -v file dest/                 # -v: verbose (passes -v to mv and ln)
#
# By default ,mvlink refuses to overwrite an existing destination (use -f) and
# refuses a cross-filesystem move (use -C).

complete -c ',mvlink' -s f -l force    -d 'Force: overwrite existing destination / replace SRC'
complete -c ',mvlink' -s v -l verbose  -d 'Verbose: pass -v to mv and ln'
complete -c ',mvlink' -s r -l relative -d 'Relative symlink target (needs GNU ln / coreutils)'
complete -c ',mvlink' -s p -l parents  -d 'Create missing destination directories (mkdir -p)'
complete -c ',mvlink' -s C -l cross-fs  -d 'Allow cross-filesystem move (non-atomic; may half-finish)'
complete -c ',mvlink' -s h -l help     -d 'Show usage and exit'

# Operands are files/directories; fish's default file completion handles them.

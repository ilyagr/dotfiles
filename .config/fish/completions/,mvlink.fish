# Completions for ,mvlink — move a file, then symlink its old location to the new one.
#
# Examples:
#   ,mvlink notes.txt archive/notes.txt   # rename form: file moves to archive/…, notes.txt -> it
#   ,mvlink notes.txt archive/            # move into a directory
#   ,mvlink a.txt b.txt c.txt backup/     # move several files into backup/
#   ,mvlink -r config.toml ~/dotfiles/    # leave a RELATIVE symlink (survives moving the tree)
#   ,mvlink -p report.pdf reports/2026/   # -p first creates missing dirs (mkdir -p)
#   ,mvlink -f new.conf app.conf          # -f: overwrite an existing destination
#   ,mvlink -v big.iso /mnt/data/         # unknown flags (here -v) are passed through to mv
#
# By default ,mvlink refuses to overwrite an existing destination (use -f).

complete -c ',mvlink' -s f -l force    -d 'Force: overwrite existing destination / replace SRC'
complete -c ',mvlink' -s r -l relative -d 'Make the symlink target relative (not absolute)'
complete -c ',mvlink' -s p -l parents  -d 'Create missing destination directories (mkdir -p)'
complete -c ',mvlink' -s h -l help     -d 'Show usage and exit'

# Operands are files/directories; fish's default file completion handles them.

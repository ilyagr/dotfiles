# From https://github.com/ranger/ranger/blob/0e6f244e7ef3ea34e106ab877fe86056b6f7eb52/examples/fish_automatic_cd.fish

# Automatically change the directory in fish after closing ranger
#
# This is a fish alias to automatically change the directory to the last visited
# one after ranger quits.
# To undo the effect of this function, you can type "cd -" to return to the
# original directory.

function ranger-cd
    set dir (mktemp -t ranger_cd.XXX)
    command ranger --choosedir=$dir
    cd (cat $dir) $argv
    rm $dir
    commandline -f repaint
end

# To bind Ctrl-O to ranger-cd, save this in `~/.config/fish/config.fish`:
# bind \co ranger-cd

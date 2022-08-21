abbr -a -g -- ri 'git rebase --autostash --autosquash --interactive HEAD~5'
# See --fork-point in `git help merge-base`. Apparently, it's a bit weird
# https://public-inbox.org/git/xmqqbmivyih1.fsf@gitster.mtv.corp.google.com/t/#rbe417781d60bd429a40584a00c450bed4946fde1
abbr -a -g -- rebase 'git rebase --autostash --fork-point'
abbr -a -g -- fd 'rg --files -g \'\''
abbr -a -g -- ec emacsclient
abbr -a -g -- ecc emacsclient -c
abbr -a -g -- ect emacsclient -t
# alias rg 'command rg --smart-case' # Causes problems https://github.com/fish-shell/fish-shell/commit/f20e8e58603fb527b72806c3d7ee7cf509e17851

alias lf lfcd
alias ranger ranger-cd

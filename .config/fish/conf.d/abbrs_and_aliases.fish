abbr -a -g -- ri 'git rebase --autostash --autosquash --interactive HEAD~5'
# See --fork-point in `git help merge-base`. Apparently, it's a bit weird
# https://public-inbox.org/git/xmqqbmivyih1.fsf@gitster.mtv.corp.google.com/t/#rbe417781d60bd429a40584a00c450bed4946fde1
abbr -a -g -- rebase 'git rebase --autostash --fork-point'
abbr -a -g -- fd 'rg --files --glob'

alias rg 'command rg --smart-case'

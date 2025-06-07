not status is-interactive && exit

alias lf lfcd
alias ranger ranger-cd

abbr f,ex 'exec fish'
abbr f,hm 'history merge'
# Without -t, `ssh host -- bash` acts weird, and `ssh host -- fish`
# is really weird. Need a reminder that it exists.
abbr ssh 'ssh -t'

abbr -a -g -- ri 'git rebase --autostash --autosquash --interactive HEAD~5'
# See --fork-point in `git help merge-base`. Apparently, it's a bit weird
# https://public-inbox.org/git/xmqqbmivyih1.fsf@gitster.mtv.corp.google.com/t/#rbe417781d60bd429a40584a00c450bed4946fde1
abbr -a -g -- rebase 'git rebase --autostash --fork-point'
abbr -a -g -- fd 'rg --files -g \'\''
abbr -a -g -- ec emacsclient
abbr -a -g -- ecc emacsclient -c
abbr -a -g -- ect emacsclient -t
# alias rg 'command rg --smart-case' # Causes problems https://github.com/fish-shell/fish-shell/commit/f20e8e58603fb527b72806c3d7ee7cf509e17851

# for `h funced funced`
abbr -a -g -- k "EDITOR=kakc"
abbr -a -g -- h "EDITOR=hx"
abbr -a -g -- v "EDITOR=vim"
abbr -a -g -- gv 'EDITOR="gvim --nofork"'
abbr -a -g -- vs 'EDITOR="code --wait"'

# jj
abbr vsd 'EDITOR="code --wait" jj describe'
abbr jjd --set-cursor=% 'jj desc -m\'%\''

abbr ,l 'PAGER="less -+FX"'

abbr ",w" --position anywhere --set-cursor=% '(which %)'
abbr orb --set-cursor=% "orb % sh -c 'fish || bash'"  # Might be too safe
abbr orb --set-cursor=% "orb % fish"

# TODO: https://dpc.pw/posts/cool-fish-shell-abbreviations/ has a few nice ones

# By krobelus, better link? https://matrix.to/#/!YLTeaulxSDauOOxBoR:matrix.org/$jk-gHKF6w4d4jOICbqs6iVZGXrqKINGoyydEiJ5GBKA?via=matrix.org&via=gitter.im&via=one.ems.host
abbr -a --position anywhere --function _bangbang -- !!
function __bangbang
        printf %s $history[1]
end

function _ancestordir
  string repeat -n (math (string length -- (string replace -r -a '[^.]' '' $argv[1])) - 1) ../
end
abbr --add dotdot --regex '^\.\.+($|/)' --function _ancestordir --position anywhere


function _replace_gitdir
    set -l dir (git rev-parse --path-format=relative --show-toplevel 2>/dev/null || return 1)
    set -l dir (git rev-parse --show-toplevel 2>/dev/null || return 1)/
    # set -l dir (git rev-parse --show-cdup 2>/dev/null || return 1)
    string replace -r "^:/" "$dir" $argv
end
abbr ':/' --position anywhere --regex '^:/.*' --function _replace_gitdir
# TODO: expand ..../ in paths similarly to :/, like https://github.com/nickeb96/puffer-fish

bind tab expand-abbr complete  # So that `git diff :/Cargo<tab> works

abbr ,jjgitdbg JJ_LOG=jj_lib::git_subprocess=debug jj git
abbr jjdev --set-cursor=% -- jj -R '$dev'/%


abbr ,cm chezmoi --destination ~/tmp-nobackup/chezmoi-test


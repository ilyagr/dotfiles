not status is-interactive && exit 0
type -q fzf_key_bindings && fzf_key_bindings
set -gx FZF_DEFAULT_OPTS "--height 40% --bind=ctrl-space:jump --tmux=top,95%,40%"
bind \e\cR history-pager  # fzf takes over \cR

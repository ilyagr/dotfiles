# Defined in /tmp/fish.vsYhVz/fzf_tmux_toggle.fish @ line 2
function fzf_tmux_toggle
  if set -q FZF_TMUX
    set -e FZF_TMUX
    echo fzf will stop using tmux panes >&2
  else
    set -Ux FZF_TMUX 1
    echo fzf will use tmux panes >&2
  end
end

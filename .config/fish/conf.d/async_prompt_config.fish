if test "$TERM_PROGRAM" = vscode
    set -g async_prompt_enable 0
    return
end

# The first of these variable definitions currently doesn't work, because
# it's loaded after __async_prompt.fish The second may or may not work,
# TODO to find out
set -g async_prompt_on_variable fish_bind_mode PWD __ilyagr_jj_op
set -g async_prompt_config_functions fish_prompt fish_right_prompt fish_git_prompt fish_jj_prompt

function fish_focus_in --on-event fish_focus_in
    type -q __async_prompt_fire && __async_prompt_fire
    # commandline -f paint  # Not sure whether this helps or hurts.
end

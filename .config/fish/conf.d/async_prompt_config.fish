set -g async_prompt_on_variable fish_bind_mode PWD __ilyagr_jj_op
set -g async_prompt_config_functions fish_prompt fish_right_prompt fish_git_prompt fish_jj_prompt

function fish_focus_in --on-event fish_focus_in
    type -q __async_prompt_fire && __async_prompt_fire
    # commandline -f paint  # Not sure whether this helps or hurts.
end

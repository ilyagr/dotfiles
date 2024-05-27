function fish_focus_in --on-event fish_focus_in
    # Update prompt if we have fish_async_prompt installed
    if type -q __async_prompt_fire
        __async_prompt_fire
    end
end

# Defined in /tmp/fish.zJI0xt/fish_prompt.fish @ line 2
function fish_prompt --description 'Informative prompt'
    #Save the return status of the previous command
    set -l last_pipestatus $pipestatus

    fish_ilya_git_prompt_config

    switch "$USER"
        case root toor
            printf '%s@%s %s%s%s# ' $USER (prompt_hostname) (set -q fish_color_cwd_root
                                                             and set_color $fish_color_cwd_root
                                                             or set_color $fish_color_cwd) \
                (prompt_pwd) (set_color normal)
        case '*'
            set -l pipestatus_string (__fish_print_pipestatus "[" "] " "|" (set_color $fish_color_status) \
                                      (set_color --bold $fish_color_status) $last_pipestatus)

            printf '[%s] %s%s %s%s %s%s%s%s \nfish> ' (date "+%I:%M %p") (set_color brblue) \
                (prompt_hostname) (set_color $fish_color_cwd) (prompt_pwd) $pipestatus_string \
                (set_color normal) (fish_vcs_prompt)
    end
end

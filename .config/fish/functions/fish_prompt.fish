function fish_prompt --description 'Custom prompt based on "Informative prompt"'
    #Save the return status of the previous command
    set -l last_pipestatus $pipestatus

    fish_ilya_git_prompt_config

    if fish_is_root_user
        printf '%s@%s %s%s%s# ' $USER (prompt_hostname) (set -q fish_color_cwd_root
                                                        and set_color $fish_color_cwd_root
                                                         or set_color $fish_color_cwd) \
            (prompt_pwd) (set_color normal)
        return
    end

    set -l pipestatus_string (__fish_print_pipestatus "[" "] " "|" (set_color $fish_color_status) \
                              (set_color --bold $fish_color_status) $last_pipestatus)

    # Using redirection character > in prompt not recommended.
    # Some options:  🐟 🐠 🦈 🐚 ‣ ‡ ⁍ • ◉ ❯ ❭ » › → ➜
    # NOT BLACK RIGHT-POINTING TRIANGLE (why? ▶) More triangles: ⏵🞂 ⯈ ▹▸
    # string match -q 'some_host' (hostname); and set -g fish_prompt_second ➜
    set -q fish_prompt_second; or set -f fish_prompt_second "🐟 or_if_err 🐠"
    set -f fish_prompt_second (string split " or_if_err " $fish_prompt_second)
    if set -qf fish_prompt_second[2]
        set -f fish_prompt_second_error $fish_prompt_second[2]
        set -f fish_prompt_second $fish_prompt_second[1]
    else
        set -f fish_prompt_second_error $fish_prompt_second
    end


    string match -qer "\s*" $pipestatus_string; and set -l fish_prompt_second (set_color red)$fish_prompt_second_error(set_color normal); or set -l fish_prompt_second (set_color cyan)$fish_prompt_second(set_color normal)
    #  ⏲[Ꮖ] [ꘉ⏲]
    printf '%s%s[%s]%s%s %s%s %s%s ' (fish_ilya_nix_level) (fish_ilya_ranger_level) (date "+%H:%M") \
        (set_color brblue)"⏱"(fish_ilya_execution_time_display) (set_color normal) \
        (set_color brblue) (prompt_hostname) \
        (set_color $fish_color_cwd) (fish_ilya_prompt_pwd)
    # The number of args below varies; if (fish_vcs_prompt) is empty, it does not count.
    printf '%s%s%s\n' $pipestatus_string (set_color normal)  (fish_vcs_prompt)
    printf '%s ' $fish_prompt_second
end

function fish_right_prompt
    # https://github.com/fish-shell/fish-shell/issues/3476#issuecomment-256058730
    if type -q tput
        tput sc; tput cuu1; tput cuf 2
    end

    set -l duration "$cmd_duration$CMD_DURATION"
    # See https://github.com/pure-fish/pure/blob/28447d2e7a4edf3c954003eda929cde31d3621d2/functions/_pure_format_time.fish#L4
    # for fancier version
    if test $duration -gt 500
        set duration (math -s 2 $duration / 1000)s
        printf '⏲%s' (set_color green)$duration(set_color normal)
    # else
    #     set duration
    end

    if type -q tput
        tput rc
    end
end

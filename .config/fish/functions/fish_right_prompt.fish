function fish_right_prompt
    set -l move_up_one_line ""
    if type -q tput && test (tput cols) -gt 60
        # Perhaps not worth it
        # set move_up_one_line yes
    end

    if test -n "$move_up_one_line"
        # https://github.com/fish-shell/fish-shell/issues/3476#issuecomment-256058730
        tput sc; tput cuu1; tput cuf 2
    end

    set -l duration "$cmd_duration$CMD_DURATION"
    set -l output ""
    set -l numberfmt (set_color green)
    set -l unitfmt  (set_color normal)

    # See https://github.com/pure-fish/pure/blob/28447d2e7a4edf3c954003eda929cde31d3621d2/functions/_pure_format_time.fish#L4
    # for fancier version

    set -l minute (math "1000 * 60")
    set -l hour (math "$minute * 60")
    set -l day  (math "$hour * 24")
    if test $duration -gt $day
        set output (printf "%s"$numberfmt"%s"$unitfmt"d" $output (math -s 0 $duration / $day) )
        set duration "$duration % $day"
    end
    if test $duration -gt $hour
        set output (printf "%s"$numberfmt"%s"$unitfmt"h" $output (math -s 0 $duration / $hour) )
        set duration "$duration % $hour"
    end
    if test $duration -gt $minute
        set output (printf "%s"$numberfmt"%s"$unitfmt"m" $output (math -s 0 $duration / $minute) )
        set duration "$duration % $minute"
    end
    if test -n "$output" || test $duration -gt 500
        set output (printf "%s"$numberfmt"%s"$unitfmt"s" $output (math -s 2 $duration / 1000))
    end

    if test -n "$output"
        printf '⏲%s' $output(set_color normal)
    end

    if test -n "$move_up_one_line"
        tput rc
    end
end

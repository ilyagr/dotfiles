function fish_ilya_execution_time_display
    # TODO: Get rid of `output`, just print
    set -l duration "$cmd_duration$CMD_DURATION"
    set -l output ""
    set -l numberfmt (set_color green) # cyan
    set -l unitfmt  (set_color normal)

    # See https://github.com/pure-fish/pure/blob/28447d2e7a4edf3c954003eda929cde31d3621d2/functions/_pure_format_time.fish#L4
    # for fancier version

    set -l minute (math "1000 * 60")
    set -l hour (math "$minute * 60")
    set -l day  (math "$hour * 24")
    if test $duration -gt $day
        set output (printf "%s"$numberfmt"%s"$unitfmt"d" $output (math -s 0 $duration / $day) )
        set duration (math $duration % $day)
    end
    if test $duration -gt $hour
        set output (printf "%s"$numberfmt"%s"$unitfmt"h" $output (math -s 0 $duration / $hour) )
        set duration (math $duration % $hour)
    end
    if test $duration -gt $minute
        set output (printf "%s"$numberfmt"%s"$unitfmt"m" $output (math -s 0 $duration / $minute) )
        set duration (math $duration % $minute)
    end
    if test -n "$output" || test $duration -gt 7000 # 500
        # Change 0 to 1-2 to add a decimal point
        set output (printf "%s"$numberfmt"%s"$unitfmt"s" $output (math -s 0 $duration / 1000))
    end

    if test -n "$output"
        printf '%s' $output(set_color normal)
    end

end

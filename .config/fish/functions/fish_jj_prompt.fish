function fish_jj_prompt
    if not command -sq jj
        return 1
    end

    if not set -q fish_jj_snapshot_working_copy
      set -f maybe_ignore_working_copy --ignore-working-copy
    end

    # Snapshot (or not?) the working copy, check that we are in a jj repo
    if not jj log $maybe_ignore_working_copy --no-graph -T "" -r 'none()' &> /dev/null
       return 1
    end

    if set -q fish_jj_show_diff_stats
      # Borrowed from `fish_hg_prompt`. Could also add to `jj` templater
      set -f diff_stats (jj diff -s --color=never | string sub -l 1 | sort -u | string join "" || true)
    end

    jj log --no-graph --ignore-working-copy --color=always -T "shell_prompt_id(\"\")" -r @-
    printf "→"
    jj log --no-graph --ignore-working-copy --color=always -T "shell_prompt_id(\"$diff_stats\")" -r @
end
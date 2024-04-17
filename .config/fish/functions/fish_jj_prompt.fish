function fish_jj_prompt
    if not command -sq jj
        return 1
    end

    # Snapshot the working copy, check that we are in a jj repo
    if not jj log -T "" -r @ &> /dev/null
       return 1
    end

    jj log --no-graph --ignore-working-copy --color=always -T shell_prompt_id -r @-
    printf "→"
    jj log --no-graph --ignore-working-copy --color=always -T shell_prompt_id -r @
end
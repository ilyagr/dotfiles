# Defined in /tmp/fish.9cieGG/fish_switch_prompt.fish @ line 2
function fish_switch_prompt --description 'Switch prompt' --argument command
    switch $command
        case u
            set -e fish_prompt_second
            source $__fish_config_dir/functions/fish_prompt.fish
        case n
            source $__fish_config_dir/functions/fish_prompt.fish
            # Using > not recommended
            set -g fish_prompt_second 'fish%'
        case m
            function fish_prompt
                echo '$ '
            end
        case '*'
            echo Sets prompt. Require one single letter argument, u or m
    end
end

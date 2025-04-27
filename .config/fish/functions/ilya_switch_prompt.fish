# Defined in /tmp/fish.9cieGG/fish_switch_prompt.fish @ line 2
function ilya_switch_prompt --description 'Switch prompt' --argument arg
    switch $arg
        case u
            set -e fish_prompt_second
            source $__fish_config_dir/functions/fish_prompt.fish
        case '%' n
            source $__fish_config_dir/functions/fish_prompt.fish
            # Using > not recommended
            set -g fish_prompt_second 'fish%'
        case a
            source $__fish_config_dir/functions/fish_prompt.fish
            set -g fish_prompt_second ➜
        case '>' g
            source $__fish_config_dir/functions/fish_prompt.fish
            set -g fish_prompt_second ❯
        case m '$'
            # function fish_prompt
            #     echo '$ '
            # end
            function fish_prompt
                if [ $status != 0 ]
                    set_color red
                else
                    set_color cyan
                end
                printf '$%s ' (set_color normal)
            end

        case '*'
            echo Sets prompt. Requires one single letter argument.
            echo 'The valid values are u,n/%,a,m/$,>/g'
    end
end

# complete -e ilya_switch_prompt # Completions seem to be loaded mulitple times (?) Maybe only when this file changes
complete ilya_switch_prompt -fa u -d 'Default 🐟 prompt'
complete ilya_switch_prompt -fa n -d '% prompt'
complete ilya_switch_prompt -fa a -d 'Arrow ➜ prompt'
complete ilya_switch_prompt -fa m -d 'Minimal $ prompt'
complete ilya_switch_prompt -fa g -d 'Wedge ❯ prompt'

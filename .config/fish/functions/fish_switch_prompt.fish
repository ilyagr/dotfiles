# Defined in /tmp/fish.9cieGG/fish_switch_prompt.fish @ line 2
function fish_switch_prompt --description 'Switch prompt' --argument command
  switch $command
    case u
      source $__fish_config_dir/functions/fish_prompt.fish
    case m
      function fish_prompt
        echo '$ '
      end
    case '*'
      echo Sets prompt. Require one single letter argument, 'u' or 'm'
  end
end

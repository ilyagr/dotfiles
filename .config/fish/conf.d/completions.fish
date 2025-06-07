# Various completions that will always be loaded. It's too much
# fuss to create a separate file for each.
complete -c rgp -w rg

# These should be replaced by official completions at some point
complete -c ug -w grep
complete -c ugrep -w grep

complete -c c.restow -w stow

complete -c t,lsp -w "tmux list-panes"
complete t,split -x -a '(__fish_complete_subcommand)'
complete ,lessclear -x -a '(__fish_complete_subcommand)'

complete ,dollar -x -a '(__fish_complete_subcommand)'
complete ,promptify -x -a '(__fish_complete_subcommand)'
complete pause_after -x -a '(__fish_complete_subcommand)'
complete -c ,pause_after -w pause_after
complete -c ,nixnom -w nix

complete -c ,jl -w "jj log"
complete -c ,kakc -w kak
complete -c hm.switch -w "home-manager switch"
complete -c hm.update -w "home-manager switch"



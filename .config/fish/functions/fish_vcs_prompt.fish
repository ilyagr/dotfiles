# Defined in /tmp/fish.x6VKj8/fish_vcs_prompt.fish @ line 2
function fish_vcs_prompt --description 'Print the prompts for all available vcsen'
    for d in $no_vcs_dirs
       if string match -n $d (pwd -P) > /dev/null
           return 0
       end
    end
    # If a prompt succeeded, we assume that it's printed the correct info.
    # This is so we don't try svn if git already worked.
    fish_git_prompt
    or fish_hg_prompt
    # The svn prompt is disabled by default because it's quite slow on common svn repositories.
    # To enable it uncomment it.
    # You can also only use it in specific directories by checking $PWD.
    # or fish_svn_prompt
end

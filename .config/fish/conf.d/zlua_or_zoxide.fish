set zlua_path ~/.local/app/z.lua
if  which lua > /dev/null && test -r $zlua_path
    lua $zlua_path --init fish once fzf | source
    alias zz='z -c'      # restrict matches to subdirs of $PWD
    # alias zi='z -i'      # cd with interactive selection
    # alias zf='z -I'      # use fzf to select in multiple matches
    alias zb='z -b'      # quickly cd to the parent directory

    function zi --wraps='z -i' --description 'alias zi=z -i and some smarts'
        if test (count $argv) = 0
            z -i .  
        else
            z -i $argv
        end
    end

    function zf --wraps='z -I' --description 'alias zf=z -I and some smarts'
        if test (count $argv) = 0
            z -I .  
        else
            z -I $argv
        end
    end

else if which zoxide > /dev/null
  zoxide init fish | source
end
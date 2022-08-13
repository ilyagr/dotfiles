set -l zlua_path ~/.local/app/z.lua
if which lua > /dev/null && test -r $zlua_path
    lua $zlua_path --init fish once fzf | source

    # It uses `builtin cd by default, which messes up `cdh`.
    set -gx _ZL_CD cd
    alias zz='z -c'      # restrict matches to subdirs of $PWD
    # alias zi='z -i'      # cd with interactive selection
    # alias zf='z -I'      # use fzf to select in multiple matches
    alias zb='z -b'      # quickly cd to the parent directory

    function zi --wraps='z -i' --description 'alias zi=z -i and some smarts'
        if set -q argv[1]
            z -i $argv
        else
            z -i .
        end
    end

    function zf --wraps='z -I' --description 'alias zf=z -I and some smarts'
        if set -q argv[1]
            z -I $argv
        else
            z -I .
        end
    end

else if which zoxide > /dev/null
  zoxide init fish | source
else
  function z
      echo 'For `z` to work, either '
      echo ' 1) Install `lua` and download z.lua to ' $zlua_path
      echo ' 2) Install `zoxide` to somewhere in the PATH'
      return 1
  end
  alias zi=z
end

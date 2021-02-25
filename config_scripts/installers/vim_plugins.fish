# #!/usr/bin/env fish
# Draft
cd ~/.vim/pack/ilya/start/
for x in (cat nice_to_have.txt)
    echo git $x
end
echo "Call vim's `:helptags ALL`"


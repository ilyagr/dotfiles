cd ~/stow
for f in  */.git/config
       sed -i.bak s/dotfiles_/dot_/g $f
end


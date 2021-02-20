### To run

```bash
sudo apt install stow tmux fish
mkdir -p ~/stow && cd ~/stow
git clone https://github.com/ilyagr/dotfiles.git

# https://backports.debian.org/Instructions/
sudo apt install -t buster-backports git gitk gitgui tmux fish

stow dotfiles   # `README.md` is in the default `.stow-local-ignore`.
```

Maybe `sudo apt install powerline fonts-powerline  # For fonts`

### Good config to borrow from
https://github.com/rbutoi/dotfiles/

### TODO
- Spacemacs & function.
- `:Space` in vim. Make a Spacevim installer?
  - Vim: look at ^E and ^Y while autocompleting. 
    Add to [auto-completion config docs](https://spacevim.org/layers/autocomplete/) or elsewhere?
- Set up forks? 
- Change fish's `la`

### VS Code extensions
- Simple: `mhutchie.git-graph`

### Snaps 

Flatpak should be better on Crostini!

`sudo apt install libsquashfuse0 squashfuse fuse snapd`


### To run

```bash
sudo apt install stow tmux fish
mkdir -p ~/stow && cd ~/stow
echo --defer=.gitconfig > ~/stow/.stowrc
git clone https://github.com/ilyagr/dotfiles.git
stow dotfiles

# Maybe
sudo apt install powerline fonts-powerline  # For fonts
```

### Probably need backports for git, etc
https://backports.debian.org/Instructions/

`sudo apt install -t buster-backports git gitk gitgui tmux fish`

**Note:** `README.md` is in the default `.stow-local-ignore`.

### VS Code extensions
- Simple: `mhutchie.git-graph`


### TODO
Vim trailing whitespace, tabs

### Snaps
sudo apt install libsquashfuse0 squashfuse fuse snapd
Flatpak should be better on Crostini

### Good config to borrow from
https://github.com/rbutoi/dotfiles/

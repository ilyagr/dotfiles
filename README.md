### To run

```bash
sudo apt install stow tmux fish
mkdir -p ~/stow && cd ~/stow
echo --defer=.gitconfig > ~/stow/.stowrc
git clone https://github.com/ilyagr/dotfiles.git
stow dotfiles
```

### Probably need backports for git, etc
https://backports.debian.org/Instructions/
`sudo apt install -t buster-backports git gitk gitgui tmux fish`

**Note:** `README.md` is in the default `.stow-local-ignore`.

### VS Code extensions
- Simple: `mhutchie.git-graph`

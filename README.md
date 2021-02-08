### To run

```bash
sudo apt install stow tmux
mkdir -p ~/stow && cd ~/stow
echo --defer=.gitconfig > ~/stow/.stowrc
git clone https://github.com/ilyagr/dotfiles.git
stow dotfiles
```

Note: `README.md` is in the default `.stow-local-ignore`.

### VS Code extensions
- Simple: `mhutchie.git-graph`
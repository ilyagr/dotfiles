### To run

```bash
sudo apt install stow tmux fish  # Or see below
mkdir -p ~/stow && cd ~/stow
git clone https://github.com/ilyagr/dotfiles.git
stow dotfiles   # `README.md` is in the default `.stow-local-ignore`.

# https://backports.debian.org/Instructions/
sudo apt install -t buster-backports git gitk gitgui tmux fish ripgrep stow
bash ~/config_scripts/installers/ripgerp_dot_ignore.bash
```

Maybe `sudo apt install powerline fonts-powerline  # For fonts`

### Finding stragglers
```
find ~/config_scripts/ ~/.config/fish -type f -printf "%P\n"
```

### Good config to borrow from
https://github.com/rbutoi/dotfiles/

### TODO
- Spacemacs & alias for it.
  - `:Space` in vim.
  - Command for interactive `s/\v\s+$//`. Perhaps command-line alias to run on all buffers?
  - Vim: look at ^E and ^Y while autocompleting.
    Add to [auto-completion config docs](https://spacevim.org/layers/autocomplete/) or elsewhere?
- [`git sparse-checkout`](https://git-scm.com/docs/git-sparse-checkout)
- [`z.lua`](https://github.com/skywind3000/z.lua) instead of zoxide?

### VS Code extensions
- Simple: `mhutchie.git-graph`

### Snaps

Flatpak should be better on Crostini!

`sudo apt install libsquashfuse0 squashfuse fuse snapd`


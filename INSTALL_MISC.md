### To run

```bash
sudo apt install -y stow tmux fish git terminfo kitty-terminfo\
    lua5.4 fzf ncdu htop kakoune bat highlight bat # Or see below
mkdir -p ~/stow && cd ~/stow
git clone https://github.com/ilyagr/dotfiles.git # Or git@github.com:ilyagr/dotfiles.git
git clone https://github.com/ilyagr/stow_nofold.git
# May need to workshop the following
git clone --recurse-submodules --shallow-submodules --remote-submodules https://github.com/ilyagr/dotfiles_submodules submodules
stow dotfiles
c.restow -R
c.each_stow git config user.email ilyagr@users.noreply.github.com

# https://backports.debian.org/Instructions/
# Not sure if any of these have backports anymore.
sudo apt install -t bullseye-backports git gitk gitgui tmux fish ripgrep stow
# Maybe also ncdu file-roller and p7zip-full
bash ~/config_scripts/installers/ripgerp_dot_ignore.bash
```

For cloud computers:

```
git clone git@github.com:ilyagr/dotfiles_remote.git cloud 
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
  - `:Space` in vim. [`:Space` in emacs](https://github.com/syl20bnr/spacemacs#modify-spacemacs-start-directory-variable).
  - Command for interactive `s/\v\s+$//`. Perhaps command-line alias to run on all buffers?
  - Vim: look at ^E and ^Y while autocompleting.
    Add to [auto-completion config docs](https://spacevim.org/layers/autocomplete/) or elsewhere?
- [`git sparse-checkout`](https://git-scm.com/docs/git-sparse-checkout)
- [`z.lua`](https://github.com/skywind3000/z.lua) instead of zoxide?

### VS Code extensions
- mhutchie.git-graph
- stkb.rewrap
- timonwong.shellcheck
- medo64.render-crlf

### Snaps

Flatpak should be better on Crostini!

`sudo apt install libsquashfuse0 squashfuse fuse snapd`


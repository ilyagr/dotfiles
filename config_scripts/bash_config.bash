export EDITOR=vim
export RIPGREP_CONFIG_PATH=~/.config/ripgrep.conf
# See also ~/.config/lesskey
LESS="R F M --mouse --wheel-lines=2"
export LESS
MOAR="-quit-if-one-screen -no-linenumbers -no-statusbar -statusbar bold -colors 16 -style dracula"
export MOAR
# TODO: Implement a way to move this to lfrc.
export LF_PAGER="less -+F"
# # The newline is because I have (unwisely?) `set ifs "\n"` in lfrc as suggested by the docs. It only seems to be important for :doc command
# export LF_PAGER=$(printf "less\n-+F")
HWATCH="-t --color --no-help-banner --mouse --border --with-scrollbar --limit=500"
export HWATCH

if [ -f ~/config_scripts/bash_config_site.bash ]; then
  . ~/config_scripts/bash_config_site.bash
fi

add_to_PATH() {
  for dir in "$@"; do
    # Three magic lines below
    if [ -d "$dir" ] && [[ ":$PATH:" != *":$dir:"* ]]; then
      export PATH="$dir:$PATH"
    fi
  done
}
add_to_PATH ~/.local/bin /snap/bin

# Running this in the background is almost certainly more trouble than
# it's worth. Let's see when this causes some confusing problem.
(~/config_scripts/backup-gnome-settings &)

# Run fish
WHICH_FISH="$(which fish)"
if [[ "$-" =~ i && -x "${WHICH_FISH}" && "${SHELL}" != "${WHICH_FISH}" ]]; then
  # Safeguard to only activate fish for interactive shells and only if fish
  # shell is present and executable. Verify that this is a new session by
  # checking if $SHELL is set to the path to fish. If it is not, we set
  # $SHELL and start fish.
  #
  # If this is not a new session, the user probably typed 'bash' into their
  # console and wants bash, so we skip this.
  
  exec env SHELL="${WHICH_FISH}" "${WHICH_FISH}" -i  
fi

# Debian standard prompt from ~/.bashrc + \n
PS1='${debian_chroot:+($debian_chroot)}[\@] \[\033[01;32m\]\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]\n\$ '

# Causes numerous duplicate entries, but least buggy option available
HISTCONTROL=ignoreboth:erasedups
shopt -s histappend
PS0='`history -a && history -c && history -r`'$PS0
# This tired monster should de-duplicate bash history
# awk 'BEGIN { RS="\n#"; FS="\n"} {{printf $1 "\01"; for(i=2;i<=NF;i++){ print $i } printf"\0" }}' ~/.bash_history  | sort -nz | uniq | awk 'BEGIN { FS="\01"; RS="\0"} {printf("#%s\n%s",$1,$2)}' 

shopt -s histverify
HISTTIMEFORMAT="%r "
HISTFILESIZE=50000
HISTSIZE=60000

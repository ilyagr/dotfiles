export EDITOR=vim
# Debian standard prompt from ~/.bashrc + \n
PS1='${debian_chroot:+($debian_chroot)}[\@] \[\033[01;32m\]\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]\n\$ '

# Clunky, but least buggy option available
HISTCONTROL=ignoreboth:erasedups
shopt -s histappend
PS0='`history -a && history -c && history -r`'$PS0

shopt -s histverify
HISTTIMEFORMAT="%r "
HISTFILESIZE=50000
HISTSIZE=60000

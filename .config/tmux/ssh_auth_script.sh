#!/bin/sh
# TODO: Actually call this script from tmux.conf
if [ -S ~/.ssh/ssh_auth_sock ]; then
    tmux set-environment -g 'SSH_AUTH_SOCK' ~/.ssh/ssh_auth_sock
fi

# Could move to fish_user_key_bindings function
bind \co 'set old_tty (stty -g); stty sane; lfcd; stty $old_tty; commandline -f repaint'

# Hopefully no longer necessary, defaults to bigwords which is nice
# # On ChromeOS, Alt+Arrows corresspond to PgUp, Home, etc
# # So, replace them with Shift+Arrows and such.
# bind \e\[1\;2C nextd-or-forward-word
# bind \e\[1\;2D prevd-or-backward-word
# bind \e\[1\;2B history-token-search-forward
# bind \e\[1\;2A history-token-search-backward

# Alternatively, replace them with Ctrl+PgUp and such. (didn't work :()
bind \e\[1\;5F nextd-or-forward-word
bind \e\[1\;5H prevd-or-backward-word
bind \e\[6\;5~  history-token-search-forward
bind \e\[5\;5~  history-token-search-backward

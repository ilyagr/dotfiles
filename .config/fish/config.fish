# On ChromeOS, Alt+Arrows corresspond to PgUp, Home, etc
# So, replace them with Shift+Arrows and such.

# Could move to fish_user_key_bindings function
bind \e\[1\;2C nextd-or-forward-word
bind \e\[1\;2D prevd-or-backward-word
bind \e\[1\;2B history-token-search-forward
bind \e\[1\;2A history-token-search-backward

# So, replace them with Ctrl+PgUp and such. (didn't work :()
bind \e\[1\;5F nextd-or-forward-word
bind \e\[1\;5H prevd-or-backward-word
bind \e\[6\;5~  history-token-search-forward
bind \e\[5\;5~  history-token-search-backward

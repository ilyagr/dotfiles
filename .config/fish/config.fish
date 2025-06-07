if status is-interactive
    # Commands to run in interactive sessions can go here

    # Has to be universal or exported in parent process
    set -U fish_features test-require-arg buffered-enter-noexec
end

# Note that nonstandard implementations of `prompt_pwd` tend to not respect this
set -g fish_prompt_pwd_dir_length 10
set -g fish_greeting "Welcome to fish, the friendly interactive shell."

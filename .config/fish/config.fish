if status is-interactive
    # Commands to run in interactive sessions can go here

    # Has to be universal or exported in parent process
    set -U fish_features test-require-arg buffered-enter-noexec
end

# This is rendered unneccessary by fish-async-prompt with https://github.com/acomagu/fish-async-prompt/pull/90,
# but is a nice trick. See also https://github.com/fish-shell/fish-shell/issues/7830#issuecomment-2953150191.
set -g ilya_pipestatus 0 # Unfortunate but necessary
function __ilya_set_pipestatus  --on-event fish_postexec
       set -gx ilya_pipestatus $pipestatus
end


# Note that nonstandard implementations of `prompt_pwd` tend to not respect this
set -g fish_prompt_pwd_dir_length 10
set -g fish_greeting "Welcome to fish, the friendly interactive shell."

not status is-interactive && exit 0
#if not string match -q  '*/nix/var/nix/profiles/default/share*' "$XDG_DATA_DIRS"
if test -n "$NIX_PROFILES"
    # Try to only run this once.
    if test -e $HOME/.nix-profile/etc/profile.d/nix.fish
        . $HOME/.nix-profile/etc/profile.d/nix.fish
        set -ax MANPATH (manpath -g)

        # Avoids weird problems with `nix develop` running `bash` inside `bash`
        # ... but creates weirder problems on mac os, where /usr/bin/bash is old.
        # alias bash /usr/bin/bash
    end # added by Nix installer

    if test -e /nix/var/nix/profiles/default/etc/profile.d/nix.fish
        . /nix/var/nix/profiles/default/etc/profile.d/nix.fish
        set -ax MANPATH (manpath -g)
    end
end

if command -q nix-your-shell
  nix-your-shell fish | source
end

# TODO: There's also a similar `source` *and* a
# `source ~/.nix-profile/etc/profile.d/hm-session-vars.sh`
# in local config. Find a better place for them?

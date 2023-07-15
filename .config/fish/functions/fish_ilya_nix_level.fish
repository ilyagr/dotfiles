function fish_ilya_nix_level
  set_color magenta
  if set -q IN_NIX_SHELL
    # printf "<nix>"
    printf "❄"
  end
  set_color normal
end

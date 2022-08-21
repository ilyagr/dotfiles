function fish_ilya_ranger_level
  set_color magenta
  if set -q RANGER_LEVEL
    printf "<R$RANGER_LEVEL>"
  end

  if set -q LF_LEVEL
    printf "<L$LF_LEVEL>"
  end
  set_color normal
end

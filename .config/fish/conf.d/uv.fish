if type -q uv
    uv generate-shell-completion fish |source
    uv tool uvx --generate-shell-completion fish |source
end


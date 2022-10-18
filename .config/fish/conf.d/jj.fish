if which jj > /dev/null
    jj debug completion --fish |source
else
    alias "jj=printf '`jj` not installed.'"
end


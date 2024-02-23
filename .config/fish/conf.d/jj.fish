if which jj > /dev/null
    if test (uname) = Darwin
        jj util completion fish |source
    else
        jj util completion --fish |source
    end
    alias "jl=jj log"
end


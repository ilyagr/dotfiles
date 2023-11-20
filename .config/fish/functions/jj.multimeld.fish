function jj.multimeld --description 'Open `meld` on every member of the revset'
    for x in (jj eachcommit $argv[1])
        jj diff --tool meld --no-pager --ignore-working-copy -r $x &
   end
end

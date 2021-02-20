function diff --wraps='diff --unified --color' --description 'alias diff=diff --unified --color'
 command diff --unified --color $argv;
 # for making patches: `diff -Naur`. Will color mess it up?
end

# Defined in - @ line 1
function la --wraps=ls --wraps='ls -a' --description 'alias la=ls -a'
  ls -a $argv;
end

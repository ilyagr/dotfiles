function jj.d
  jj --config-toml '[ui]
diff-editor = "diffedit3"
diff.tool = "diffedit3"
merge-editor = "kdiff3"
default-command = "diffedit" # Does not work on the command-line
' $argv; 
end

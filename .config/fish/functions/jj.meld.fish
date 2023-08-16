function jj.meld
  jj --config-toml '[ui]
diff-editor = "meld-3"
diff.tool = "meld"
merge-editor = "meld"' $argv; 
end

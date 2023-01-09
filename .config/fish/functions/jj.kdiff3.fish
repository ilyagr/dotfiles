function jj.kdiff3 --wraps=jj
  jj --config-toml '[ui]
diff-editor = "kdiff3"
merge-editor = "kdiff3"' $argv; 
end

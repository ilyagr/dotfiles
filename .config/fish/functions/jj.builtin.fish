function jj.builtin
  jj --config-toml '[ui]
diff-editor = ":builtin-web"
diff.tool = ":builtin-web"
merge-editor = ":builtin"' $argv; 
end

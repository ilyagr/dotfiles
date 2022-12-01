function jj.meld --wraps=jj\ --config-toml\ \[ui\]\ndiff-editor\ =\ \"meld\"\nmerge-editor\ =\ \"meld\" --wraps=jj\ --config-toml\ \'\[ui\]\ndiff-editor\ =\ \"meld\"\nmerge-editor\ =\ \"meld\"\' --description alias\ jj.meld=jj\ --config-toml\ \'\[ui\]\ndiff-editor\ =\ \"meld\"\nmerge-editor\ =\ \"meld\"\'
  jj --config-toml '[ui]
diff-editor = "meld"
merge-editor = "meld"' $argv; 
end

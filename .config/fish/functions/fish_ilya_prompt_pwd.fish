function fish_ilya_prompt_pwd
    set -q argv[1]
    or set argv $PWD

    #ihttps://github.com/NixOS/nix/blob/master/src/libutil/hash.cc#L83-L107
    set -l nix_hash_alphabet 0123456789abcdfghijklmnpqrsvwxyz
    set -l nixhashlen 32
    set -l showhash   6
    set -l resthash (math $nixhashlen - $showhash)

    prompt_pwd (string replace -r \
        "store/([$nix_hash_alphabet]{$showhash})[$nix_hash_alphabet]{$resthash}-" \
        'store/$1…-' $argv)
    
end

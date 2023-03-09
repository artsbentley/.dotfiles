function lfcd {
    tmp=$(mktemp)
    lf -last-dir-path=$tmp $argv
    if [[ -f "$tmp" ]]; then
        dir=$(cat $tmp)
        rm -f $tmp
        if [[ -d "$dir" ]]; then
            if [[ "$dir" != "$(pwd)" ]]; then
                cd $dir
            fi
        fi
    fi
}




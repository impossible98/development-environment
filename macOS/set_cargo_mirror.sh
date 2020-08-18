#!/usr/bin/env bash

set_cargo_mirror() {
    [[ -f $HOME/.cargo/config ]] && rm "$HOME/.cargo/config"
    cat > "$HOME/.cargo/config"<<-EOF
[source.crates-io]
replace-with = 'tuna'

[source.tuna]
registry = "https://mirrors.tuna.tsinghua.edu.cn/git/crates.io-index.git"
EOF
}

main() {
    set_cargo_mirror
    echo -e "All has been done."
}

main

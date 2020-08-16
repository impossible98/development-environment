#!/usr/bin/env bash

unset_http_proxy() {
    git config --global --unset http.proxy
    git config --global --unset https.proxy
}

main() {
    unset_http_proxy
    echo -e "All has been done."
}

main

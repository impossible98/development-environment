#!/usr/bin/env bash

unset_http_proxy() {
    unset http_proxy
    unset https_proxy
}

main() {
    unset_http_proxy
    echo -e "All has been done."
}

main

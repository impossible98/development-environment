#!/usr/bin/env bash

set_git_proxy() {
    echo -e "Starting setting git proxy."
    echo -e "* Input address (eg: http://[user[:password]@]proxyhost[:port])."
    read -e -p "> " -r http_proxy
    if [[ -z "$http_proxy" ]]; then
        echo -e "The the address is not right."
    else
        git config --global http.proxy "$http_proxy"
    fi
    echo -e "* Input the address (eg: https://[user[:password]@]proxyhost[:port])."
    read -e -p "> " -r https_proxy
    if [[ -z "$https_proxy" ]]; then
        echo -e "The address is not right."
    else
        git config --global https.proxy "$https_proxy"
    fi
}

main() {
    set_git_proxy
    echo -e "All has been done."
}

main

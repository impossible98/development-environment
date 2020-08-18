#!/usr/bin/env bash

set_http_proxy() {
    echo -e "Starting setting http proxy."
    echo -e "* Input the address (eg: http://[user[:password]@]proxyhost[:port])."
    read -e -p "> " -r http_proxy
    if [[ -z "$http_proxy" ]]; then
        echo -e "The address is not right."
    else
        export http_proxy="$http_proxy"
    fi
    echo -e "* Input the address (eg: https://[user[:password]@]proxyhost[:port])."
    read -e -p  "> " -r https_proxy
    if [[ -z "$https_proxy" ]]; then
        echo -e "The address is not right."
    else
        export https_proxy="$https_proxy"
    fi
}

main() {
    set_http_proxy
    echo -e "All has been done."
}

main

weather() {
    if [ -n "$*" ]; then
        location=$(php -r "echo urlencode(\"$*\");");
    else
        location="hamburg";
    fi

    curl "http://wttr.in/$location";
}

upgrade() {
    sudo apt-get autoremove
    echo 'APT auto remove finished...'

    sudo apt-get update
    echo 'APT update finished...'

    sudo apt-get dist-upgrade
    echo 'APT distributive upgrade finished...'

    sudo apt-get upgrade
    echo 'APT upgrade finished...'

    sudo apt-get autoremove
    echo 'APT auto remove finished...'
}

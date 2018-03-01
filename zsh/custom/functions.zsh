weather() {
    if [ -n "$*" ]; then
        location=$(php -r "echo urlencode(\"$*\");");
    else
        location="hamburg";
    fi

    curl "http://wttr.in/$location";
}

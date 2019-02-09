alias gst="git status"
alias gaa="git add --all"
alias gc="git commit -v"
alias gl="git pull"
alias gpoh="git push origin HEAD"
alias gco="git checkout"
alias nah="git reset --hard && git clean -df"

createTag() {
    if [ ! $(git rev-parse --is-inside-work-tree 2>/dev/null) ]; then
        echo "You have to be inside a git repository";
        return;
    fi

    if [[ (-z "$1") || ! ($1 =~ ^[0-9]+.[0-9]+.[0-9]+$) ]]; then
        echo "Tag '$1' does not match [0-9]+.[0-9]+.[0-9]+";
        return;
    fi

    git tag -a $1 -m "v$1";
    git push origin HEAD $1;
}

deleteTag() {
    if [ ! $(git rev-parse --is-inside-work-tree 2>/dev/null) ]; then
        echo "You have to be inside a git repository";
        return;
    fi

    if [[ (-z "$1") || ! ($1 =~ ^[0-9]+.[0-9]+.[0-9]+$) ]]; then
        echo "Tag '$1' does not match [0-9]+.[0-9]+.[0-9]+";
        return;
    fi

    git tag -d $1;
    git push origin :refs/tags/$1;
}

#!/bin/sh

default_version=2019a
default_dir() {
    version="$1"
    echo "$HOME/share/matlab-r$version/R$version"
}

paren_args() {
    for a in "$@"; do
        echo "'$a'"
    done
}


if [ -z "$MATLAB_DIR" ]; then
    test "$MATLAB_VERSION" || MATLAB_VERSION="$default_version"
    MATLAB_DIR="$(default_dir "$MATLAB_VERSION")"
fi

nix_dir="$(dirname "$(readlink -f "$0")")"

desktop=-desktop
for a in "$@"; do
    test "$a" = "-nodesktop" && desktop=''
done


runScript="$MATLAB_DIR/bin/matlab $desktop $(paren_args "$@")"
exec nix-shell --argstr runScript "$runScript" "$nix_dir"/matlab.nix

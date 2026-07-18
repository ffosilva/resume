#!/bin/bash

replace() {
    local search=$1
    local replace=$2
    local filename=$3

    if [ "$(uname)" = "Darwin" ]; then
        sed -i '' "s/${search}/${replace}/g" ${filename}
    else
        sed -i "s/${search}/${replace}/g" ${filename}
    fi
}

bolderize() {
    local text=$1
    local filename=$2

    replace ${text} "\\\textbf{${text}}" ${filename}
}

bolderize "F.~Silva" $1
bolderize "F.~{Silva}" $1

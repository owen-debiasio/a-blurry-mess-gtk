#!/bin/bash

title=$(playerctl metadata title 2>/dev/null)
artist=$(playerctl metadata artist 2>/dev/null)

if [ -n "$title" ]; then
    echo -e " \uf04b   $artist - $title |"
else
    echo " "
fi

#!/bin/bash

title=$(playerctl metadata title 2>/dev/null)
artist=$(playerctl metadata artist 2>/dev/null)

MAX_LENGTH=64

if [ -n "$title" ]; then
    full_text="$artist - $title"

    if [ ${#full_text} -gt $MAX_LENGTH ]; then
        display_text="${full_text:0:$MAX_LENGTH}..."
    else
        display_text="$full_text"
    fi

    echo -e " \uf04b    $display_text |"
else
    echo ""
fi

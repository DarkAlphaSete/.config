#!/bin/bash

# Replacing \ with nothing is needed because youtube-dl doesn't cooperate with ZSH's plugin for safe pasting
youtube-dl $(echo "${1//\\}") --ignore-errors --ignore-config --geo-bypass --no-playlist --output "%(playlist)s/[%(uploader)s] - %(title)s.%(ext)s" --format "bestaudio" --extract-audio --audio-format "opus" --audio-quality 0

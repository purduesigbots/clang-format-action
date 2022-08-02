#!/bin/sh -l

# Address fatal error with directory being owned by root
git config --global --add safe.directory /github/workspace

git-clang-format --style="$1" "$2"

ls -la .git/objects

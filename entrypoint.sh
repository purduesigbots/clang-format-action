#!/bin/sh -l

git-clang-format --style="$1" HEAD~1

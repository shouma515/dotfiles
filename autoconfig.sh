#!/bin/bash
files=$(ls -a | grep -E '^\.[^.]+' |grep -v .git | grep -E '\w$')
# get only dotfiles, and remove . .. .git and .un~(vim undo) files
current_dir=$(pwd)
for file in "$files"; do
    ln -s "$current_dir/$file" "$HOME/$file" # 创建软链接
done

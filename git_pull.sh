#!/bin/bash

# git branch --set-upstream-to=origin/<branch> と怒られたときに使うスクリプト

# カレントブランチ名
current_branch_name="$(git rev-parse --abbrev-ref @)"

# リモートブランチを指定して git pull する
git branch --set-upstream-to="origin/${current_branch_name}" "${current_branch_name}"
git pull

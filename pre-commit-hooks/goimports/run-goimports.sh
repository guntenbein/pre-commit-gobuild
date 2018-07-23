#!/usr/bin/env bash
set -e

for file in $(find . -type f -name "*.go" -not -path "./vendor/*"); do
    goimports -w -l ${file}
done
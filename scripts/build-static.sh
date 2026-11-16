#!/bin/sh
set -eu

rm -rf dist
mkdir -p dist
cp index.html dist/index.html

commit_line=$(git log -1 --format='%h %s')
escaped_commit_line=$(printf '%s' "$commit_line" | sed 's/[&|]/\\&/g')
sed -i "s|__COMMIT_LINE__|$escaped_commit_line|g" dist/index.html

if grep -q '__COMMIT_LINE__' dist/index.html; then
  echo 'commit placeholder was not replaced' >&2
  exit 1
fi

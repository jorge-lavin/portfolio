#!/bin/sh
set -eu

rm -rf dist
mkdir -p dist
for page in index.html blog.html; do
  cp "$page" "dist/$page"
done

commit_line=$(git log -1 --format='%h %s')
escaped_commit_line=$(printf '%s' "$commit_line" | sed 's/[&|]/\\&/g')
for page in dist/index.html dist/blog.html; do
  sed -i "s|__COMMIT_LINE__|$escaped_commit_line|g" "$page"
done

if grep -q '__COMMIT_LINE__' dist/index.html || grep -q '__COMMIT_LINE__' dist/blog.html; then
  echo 'commit placeholder was not replaced' >&2
  exit 1
fi

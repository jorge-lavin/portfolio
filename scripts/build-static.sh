#!/bin/sh
set -eu

rm -rf dist
mkdir -p dist
cp index.html dist/index.html

commit_sha=$(git log -1 --format=%h)
sed -i "s/__COMMIT_SHA__/$commit_sha/g" dist/index.html

if grep -q '__COMMIT_SHA__' dist/index.html; then
  echo 'commit placeholder was not replaced' >&2
  exit 1
fi

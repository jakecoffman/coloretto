#!/usr/bin/env sh

# abort on errors
set -e

rm -rf dist

# build
npm run build

# navigate into the build output directory
cd dist
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:jakecoffman/colors.git master:gh-pages

cd -

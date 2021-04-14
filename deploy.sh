#!/usr/bin/env sh
# abort on errors
set -e
# build
npm run build
# navigate into the build output directory
cd dist
cp index.html 404.html
cd ..
gh-pages -d dist
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
git init
git add -A
git commit -m 'update portfolio'
git push -f git@github.com:weiaquarius/newportfolio.git master:gh-pages
cd -
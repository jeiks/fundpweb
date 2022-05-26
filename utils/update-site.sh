#!/bin/bash

set -o errexit

TARGET='docs'

echo 'Building website..'
bundle exec jekyll build
#echo 'Removing the old one...'
#rm -rf $TARGET
#echo 'Copying the new one...'
#cp -r _site $TARGET
echo 'Publishing modifications...'
git commit -am "Updating website"
git push origin main

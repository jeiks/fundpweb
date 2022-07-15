#!/bin/bash

set -o errexit

TARGET='docs'

echo 'Building website..'
bundle exec jekyll build
echo 'Publishing modifications...'
git add -A
git commit -am "Updating website"
git push origin main

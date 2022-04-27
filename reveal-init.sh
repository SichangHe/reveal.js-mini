#!/usr/bin/env bash

# symlink
ln -s "$(dirname "${BASH_SOURCE[0]}")/css" css
ln -s "$(dirname "${BASH_SOURCE[0]}")/dist" dist
ln -s "$(dirname "${BASH_SOURCE[0]}")/examples" examples
ln -s "$(dirname "${BASH_SOURCE[0]}")/js" js
ln -s "$(dirname "${BASH_SOURCE[0]}")/plugin" plugin
ln -s "$(dirname "${BASH_SOURCE[0]}")/gulpfile.js" gulpfile.js
ln -s "$(dirname "${BASH_SOURCE[0]}")/node_modules" node_modules
ln -s "$(dirname "${BASH_SOURCE[0]}")/package-lock.json" package-lock.json
ln -s "$(dirname "${BASH_SOURCE[0]}")/package.json" package.json

# copy
cp "$(dirname "${BASH_SOURCE[0]}")/index.html" index.html

# ignore symlink
find * -type l -not -exec grep -q "^{}$" .gitignore \; -print >>.gitignore

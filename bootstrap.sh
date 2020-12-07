#!/bin/bash
./.ame/clean.sh
cp .ame/* ./ -rf

gitbook build _books/sche/ books/sche
gitbook build _books/tools/ books/tools
gitbook build _books/prog/ books/prog

jekyll serve
./.ame/clean.sh

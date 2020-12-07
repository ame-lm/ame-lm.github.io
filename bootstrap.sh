#!/bin/bash
./.ame/clean.sh
cp .ame/* ./ -rf
gitbook build _books/book_1/ books/book_1
jekyll serve
./.ame/clean.sh
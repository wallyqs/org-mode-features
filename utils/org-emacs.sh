#!/bin/bash

# FIXME: Detect environment instead of only supporting OS X
# FIXME: Currently this script has nonly been tested in Org-mode version 7.8.11
file=$1
/Applications/Emacs.app/Contents/MacOS/Emacs -Q --batch --eval \
"(progn (find-file \"$file\") (message (concat \"Exporting $file to HTML\" \" using \" (org-version))) (org-export-as-html 10 nil nil nil t))"

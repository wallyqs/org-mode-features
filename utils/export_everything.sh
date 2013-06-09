#!/bin/bash

for file in `ls features/*.org`;
do
  echo "---------------- Exporting $file ------------------"
  echo "with Emacs..."
  bash ./utils/org-emacs.sh $file
  echo "with Ruby..."
  DEBUG=true org-ruby --translate html $file > $file-ruby.html
done

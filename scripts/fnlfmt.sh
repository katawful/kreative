#!/bin/bash

for i in $(find 'fnl/kreative/' -name "*.fnl"); do
  fnlfmt --fix "$i"
done;
echo "Done formatting with fnlfmt"

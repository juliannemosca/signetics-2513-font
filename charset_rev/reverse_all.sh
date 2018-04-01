#!/bin/sh

content=""
for f in *.txt
do
content=$(rev <$f)
printf "%s\n" $content > $f
done

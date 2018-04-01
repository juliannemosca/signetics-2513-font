#!/bin/sh

CHAR_WIDTH=5
CHAR_HEIGHT=8
CHARSET_SIZE=128

FONTFNAME="./font/2513.bin"

bfe -n $CHARSET_SIZE $CHAR_WIDTH $CHAR_HEIGHT $FONTFNAME

CHSET_FILE_PREFIX="./charset/"

for i in $(seq 0 31)
do
    charset_file=$(printf '%s%02d.txt' $CHSET_FILE_PREFIX $i)
    bfe -w $CHAR_WIDTH $CHAR_HEIGHT $(($i + 64)) $FONTFNAME < $charset_file
done

for i in $(seq 32 63)
do
    charset_file=$(printf '%s%02d.txt' $CHSET_FILE_PREFIX $i)
    bfe -w $CHAR_WIDTH $CHAR_HEIGHT $i $FONTFNAME < $charset_file
done

for i in $(seq 1 26)
do
    charset_file=$(printf '%s%02d.txt' $CHSET_FILE_PREFIX $i)
    bfe -w $CHAR_WIDTH $CHAR_HEIGHT $(($i + 96)) $FONTFNAME < $charset_file
done

bfe -w $CHAR_WIDTH $CHAR_HEIGHT 127 $FONTFNAME < ./charset/del_char.txt


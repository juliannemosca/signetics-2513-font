# Signetics 2513 Font

This is a binary representation of the Signetics 2513 character generator chip's ASCII font character set. The original ** 64 * 8 * 5 ** matrix has been replaced with a ** 128 * 8 * 8 ** matrix that resembles in part a typical ASCII table, the difference being that it only includes the characters in the 2513 character set plus the DEL character at the end. The lower-case `a-z` letters are replaced by a duplicate of the upper-case characters. Otherwise, the positions of all the available characters are presented in the same positions as in a standard ASCII table.

Also included is a mirrored version of the same binary, where each of the characters has each row reversed, as well as the scripts used for reversing the charset and making the font files.

The program used to generate the binary font files, `bfe`, is purpose specific for this and you can find it in this repo:
https://github.com/julianbachiller/bitmapped-font-editor

But the generated files are in the `/fonts` directory so there's no need to actually run the scripts. :)

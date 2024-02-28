@echo off
magick %1 -colorspace gray draft.jpg
magick draft.jpg gradient_line.png -clut draft.jpg
magick draft.jpg -alpha on -channel a -evaluate set 75% draft.png
magick draft.jpg draft.png -gravity center -composite -format jpg -quality 90 %2
del draft.png
del draft.jpg

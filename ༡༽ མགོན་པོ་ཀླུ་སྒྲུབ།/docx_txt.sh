#!/usr/bin/env bash
# This script takes all .docx files, uses docx2txt to convert all docx files in txt.
# sudo apt-get install docx2txt xlsx2csv
# xlsx2csv requires to escape the spaces in the file names. The easiest is to remove all spaces from file names.

#FILES=./ཡིག་ཆ་འདིར་ཡོད།/*.docx
#for f in $FILES
#do
#  # extension="${f##*.}"
#  filename="${f#./ཡིག་ཆ་འདིར་ཡོད།/}"
#  filename="${filename%.*}"
#  echo "Converting $f"
#  #`docx2txt < $f > $filename.txt`
#  `pandoc -f docx -t plain --wrap=preserve  $f | sed  '/^$/d' > ./csvtxt/$filename.txt`
#  # uncomment this line to delete the source file.
#  # rm $f
#done

GILES=./ཡིག་ཆ་འདིར་ཡོད།/*.xlsx
for g in $GILES
do
  # extension="${g##*.}"
  gilename="${g#./ཡིག་ཆ་འདིར་ཡོད།/}"
  gilename="${gilename%.*}"
  echo "Converting $g"
  `xlsx2csv $g | tr ';' ',' > ../../canon_notes/1-a-reinsert_notes/input/$gilename.csv`
  #`xlsx2csv $g | tr ';' ',' > ./csvtxt/$gilename.csv`
  # uncomment this line to delete the source file.
  # rm $g
done

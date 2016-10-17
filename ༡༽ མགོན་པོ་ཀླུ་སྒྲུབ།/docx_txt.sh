#!/usr/bin/env bash
# This script takes all .docx files, uses docx2txt to convert all docx files in txt.
# sudo apt-get install docx2txt xlsx2csv
# xlsx2csv requires to escape the spaces in the file names. The easiest is to remove all spaces from file names.

#FILES=./xlsxdocx/*.docx
#for f in $FILES
#do
  ## extension="${f##*.}"
  #filename="${f#./xlsxdocx/}"
  #filename="${filename%.*}"
  #echo "Converting $f"
  ##`docx2txt < $f > $filename.txt`
  #`pandoc -f docx -t plain --wrap=preserve  $f | sed  '/^$/d' > ./csvtxt/$filename.txt`
  ## uncomment this line to delete the source file.
  ## rm $f
#done

GILES=./xlsxdocx/*.xlsx
for g in $GILES
do
  # extension="${g##*.}"
  gilename="${g#./xlsxdocx/}"
  gilename="${gilename%.*}"
  echo "Converting $g"
  #`xlsx2csv $g | tr ';' ',' > ../canon_notes/input/$gilename.csv`
  `xlsx2csv $g | tr ';' ',' > ./csvtxt/$gilename.csv`
  # uncomment this line to delete the source file.
  # rm $g
done

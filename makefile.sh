#!/bin/bash
echo "Hello world!"
for file in ./*.adoc ; do 
    asciidoctor-pdf $file -a pdf-theme=my-theme.yml
	#echo "Diese Datei: $file"
	#fname=$(basename "$file")
	#echo "hat den Namen: $fname"
	#fdir=$(dirname "$file")
	#echo "und steht im Verzeichnis: $fdir"
done

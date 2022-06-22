#!/bin/bash
echo "Hello world!"
for file in ./*.adoc ; do 
    asciidoctor-pdf $file -a pdf-theme=my-theme.yml
	#echo "$file als PDF generiert"
	fname=$(basename "$file")
    for pdffile in ./$fname.pdf ; do 
	    echo "Neues PDF: $pdffile"
        git add $pdffile
	done
    #fdir=$(dirname "$file")
	#echo "und steht im Verzeichnis: $fdir"
done
jetzt=date
git commit -m "Generate all PDF at $jetzt"

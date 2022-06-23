#!/bin/bash
for file in ./*.adoc ; do 
    asciidoctor-pdf $file -a pdf-theme=my-theme.yml
    for pdffile in ./${file%adoc}pdf ; do 
	    echo "Neues PDF: $pdffile"
        mv $pdffile Kochbuch/$pdffile
        #cd Kochbuch
        #git add $pdffile
        #cd ..
	done
done
#jetzt=$(date)
#git commit -m "Generate all PDF at $jetzt" .

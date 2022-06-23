#!/bin/bash
mkdir HtmlKochbuch
for file in ./*.adoc ; do 
    asciidoctor-pdf $file -a pdf-theme=my-theme.yml
    for pdffile in ./${file%adoc}pdf ; do 
	    echo "Neues pdf: $pdffile"
        mv $pdffile Kochbuch/$pdffile
        cd Kochbuch
        git add $pdffile
        cd ..
	done
done
jetzt=$(date)
git commit -m "Kochbuch $jetzt" Kochbuch/.

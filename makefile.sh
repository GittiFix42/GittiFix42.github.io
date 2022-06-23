#!/bin/bash
mkdir HtmlKochbuch
for file in ./*.adoc ; do 
    #asciidoctor-pdf $file -a pdf-theme=my-theme.yml
    asciidoctor $file 
    for htmlfile in ./${file%adoc}html ; do 
	    echo "Neues html: $htmlfile"
        mv $htmlfile HtmlKochbuch/$htmlfile
        #cd Kochbuch
        #git add $pdffile
        #cd ..
	done
done
#jetzt=$(date)
#git commit -m "Generate all PDF at $jetzt" .

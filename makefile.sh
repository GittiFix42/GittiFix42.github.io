#!/bin/bash
mkdir HtmlKochbuch
for file in ./*.adoc ; do 
    #asciidoctor-pdf $file -a pdf-theme=my-theme.yml
    asciidoctor $file 
    for htmlfile in ./${file%adoc}html ; do 
	    echo "Neues html: $htmlfile"
        mv $htmlfile HtmlKochbuch/$htmlfile
	done
    for jpegfile in ./${file%adoc}jpeg ; do 
	    echo "Neues html: $jpegfile"
        mv $jpegfile HtmlKochbuch/$jpegfile
	done
done
#jetzt=$(date)
#git commit -m "Generate all PDF at $jetzt" .

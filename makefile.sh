#!/bin/bash
mkdir HtmlKochbuch
#for file in ./*.adoc ; do 
#    #asciidoctor-pdf $file -a pdf-theme=my-theme.yml
#    asciidoctor $file 
#    for htmlfile in ./${file%adoc}html ; do 
#	    echo "Neues html: $htmlfile"
#        mv $htmlfile HtmlKochbuch/$htmlfile
#	done
#done
for jpegfile in ./*.jpeg ; do 
    echo "jpeg: $jpegfile"
    mv $jpegfile HtmlKochbuch/$jpegfile
done

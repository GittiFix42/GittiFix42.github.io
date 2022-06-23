#!/bin/bash
mkdir HtmlKochbuch
for file in ./*.adoc ; do 
    #asciidoctor-pdf $file -a pdf-theme=my-theme.yml
    asciidoctor $file 
    for htmlfile in ./${file%adoc}html ; do 
	    echo "Neues html: $htmlfile"
        mv $htmlfile HtmlKochbuch/$htmlfile
	done
    #if [-e ./${file%adoc}jpeg]; then
    #    echo ${file%adoc}jpeg
        #for jpegfile in ./${file%adoc}jpeg ; do 
	    #    echo "jpeg: $jpegfile"
        #    mv $jpegfile HtmlKochbuch/$jpegfile
	    #done
    #fi
done
for jpegfile in ./*.jpeg ; do 
    echo "jpeg: $jpegfile"
    mv $jpegfile HtmlKochbuch/$jpegfile
done
#jetzt=$(date)
#git commit -m "Generate all PDF at $jetzt" .

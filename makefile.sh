#!/bin/bash
mkdir HtmlKochbuch
for file in ./*.adoc ; do 
#    #asciidoctor-pdf $file -a pdf-theme=my-theme.yml
#    asciidoctor $file 
    docker run --rm -v $(pwd):/documents/ asciidoctor/docker-asciidoctor asciidoctor-pdf $file
    for htmlfile in ./${file%adoc}html ; do 
	    docker --rm -v $(pwd):/documents/ run pwd
        docker --rm -v $(pwd):/documents/ run ls -altr
        echo "Neues html: $htmlfile"
        docker --rm -v $(pwd):/documents/ run mv $htmlfile HtmlKochbuch/$htmlfile
	done
done
for jpegfile in ./*.jpeg ; do 
    echo "jpeg: $jpegfile"
    mv $jpegfile HtmlKochbuch/$jpegfile
done

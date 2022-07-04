#!/bin/bash
mkdir HtmlKochbuch
for file in ./*.adoc ; do 
    asciidoctor $file -a stylesheet=Stylesheet.css
done
for jpegfile in ./*.jpeg ; do 
    echo "jpeg: $jpegfile"
    mv $jpegfile HtmlKochbuch/$jpegfile
done
for htmlfile in ./*.html ; do 
    echo "html: $htmlfile"
    mv $htmlfile HtmlKochbuch/$htmlfile
done

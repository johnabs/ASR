#!/bin/sh
# This one is not currently functional, the ACS api is kinda jank, so I'm working on figuring out how to split the output into multiple lines before parsing it. Also, doing it without WGET would be ideal.
search=${1//_/+}
d1=$2
d2=$3
wget "https://pubs.acs.org/action/doSearch?AllField=stem+cell&startPage=&Earliest=%5B$2%20TO%$3%5D" -O out.html
#out.html | grep "<a href=" |sed 's/\"/\"><\/a>\n/2' | sed 's/.*["]\(.*\)["].*/https:\/\/www.nature.com\1.pdf/g' |grep /doi/10.  |uniq > pdfs.txt
#wget -q -i pdfs.txt
#
#for l in ./*.pdf; 
#do
#	echo $l
#	if [ "$(head -n 1 $l)" = "<!DOCTYPE html>" ]; then
#		rm $l
#	else
#		mv $l $(pdfinfo $l | awk -F ":          " '/Title:/{print $2}' | sed 's/\s/_/g').pdf
#	fi
#done
#
#rm pdfs.txt
#rm out.html

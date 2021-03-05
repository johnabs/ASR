#!/bin/sh
# This requires the search terms to be separated by underscores, and the dates to be in YYYY-MM-DD format with the earlier day going first.
# An example input would look like this: biorxiv.sh chromatin_histones 2021-02-15 2021-03-01, to search for the terms chromatin and histones in the date range from Feb 15th to March 01
search=${1//_/%252B}
date1=$2
date2=$3
curl https://www.biorxiv.org/search/$search%20jcode%3Abiorxiv%20subject_collection_code%3ABiochemistry%20toc_section%3ANew%20Results%20limit_from%3A$date1%20limit_to%3A$date2%20numresults%3A75%20sort%3Arelevance-rank%20format_result%3Acondensed | grep "<a href=" |sed 's/\"/\"><\/a>\n/2' | sed 's/.*["]\(.*\)["].*/https:\/\/www.biorxiv.org\1.full.pdf/g' |grep content/10  |uniq >> pdfs.txt
lines=$(<pdfs.txt)
for l in $lines
do
	curl $l > temp.pdf
	mv temp.pdf $(pdfinfo temp.pdf | awk -F ":          " '/Title:/{print $2}' | sed 's/\s/_/g').pdf
done
rm pdfs.txt

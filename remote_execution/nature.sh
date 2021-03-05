#!/bin/sh
# This requires the search terms to be separated by underscores, and the default date range is set for the last 7 days.
# This script checks to see what you input for the dates. If you input nothing, it defaults to the last 7 days. If you want to check the last month, provide last_30_days, and if you want to provide a year,provide it twice.
# E.g. nature.sh chromatin 2021-2021, to search this year. This is just due to how the nature API is kinda quirky.
search=${1//_/%20}
date1=$2
date2=$3
[[ -z $date1 && -z $date2 ]] && range="last_7_days"
! [ -z $date1 ] &&  [ -z $date2 ] && range="$date1"
! [ -z $date1 ] && ! [ -z $date2 ] && range="$date1-$date2"
echo "$range"
curl -L -s "https://www.nature.com/search?q=$search&order=relevance&date_range=$range" | grep "<a href=" |sed 's/\"/\"><\/a>\n/2' | sed 's/.*["]\(.*\)["].*/https:\/\/www.nature.com\1.pdf/g' |grep /articles/  |uniq > pdfs.txt
wget -q -i pdfs.txt
for l in ./*.pdf; 
do
	echo $l
	if [ "$(head -n 1 $l)" = "<!DOCTYPE html>" ]; then
		rm $l
	else
		mv $l ./nature/$(pdfinfo $l | awk -F ":          " '/Title:/{print $2}' | sed 's/\s/_/g' |sed 's/\//_/g').pdf
	fi
done
rm pdfs.txt
rm out.html

#!/bin/sh
#This script handles incoming journal article links and turns them into redirects to the pdf. Currently only works for the arXiv, but more will be added over time. I currently use it with Newsboat.
[[ $1 =~ "arxiv" ]] && printf "$1" | sed 's/abs/pdf/g' 

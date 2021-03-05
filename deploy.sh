#!/bin/sh
#This script is designed to move the scripts from the folders you want into a directory you can edit, and will be in your PATH.
#The e flag is used to automatically edit your shell config file (e.g. bashrc, zshrc, etc.), so you can specify where to add it, e.g. path.sh -e ~/.bashrc
#Regardless of whether or not you use the flag, you need to specify the directory you want the scripts to go to, then the folders of the scripts you're interested in.
# E.g. ./path.sh -e ~/.config/zsh/zshrc ~/.bin rss_helpers pdf_downloaders. The scripts in these folders will be moved to ~/.bin, and with the -e flag, ~/.bin will be added to your path in your shell config file.
while getopts "e:" opt; do
  case $opt in
    e)
      shift 1
      echo 'export PATH=~/.bin:$PATH' >> $1
      shift 1
      ;;
    \?)
      echo "Invalid option: $OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option $OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

dest=$1
shift
for i in "$@"
do
	cp -R "./$i/"*.sh $dest
done

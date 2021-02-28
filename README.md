# ASR
Academic scripts for researchers: automating boring/tedious parts of research


This is an ever growing repository of useful scripts for researchers across academia/industry to help aggregate papers, manage and execute experiments on code, search individual or multiple journals for a given term and time-frame, execute scripts on a super-computer without the need for direct SSH, etc. As more scripts are added by myself or contributors, they will be added into appropriate sub-directories for easy searching.

## PDF Downloaders
pdf_downloaders contain scripts where you can select your journal/set of journals, provide a search term and a time-frame, and the script will grab all the pdfs that fall within those parameters. 

## Coding Experiments
coding_experiments are scripts designed to ease git workflow for people who just want the scripts to help keep track of experimental changes within their codebase.

## Remote Execution
remote_execution are used to help users write local code, and redirect it for execution on a cluster.

## RSS Helpers
The rss helper is really just 1 script (currently) that allows you to instantly handle links and redirect them to the pdf automatically, without the need of browser navigation.

(with more to come!)



# Quick Start Guide

## Linux
For nearly all Linux users, these scripts should be plug and play. As a reminder, make sure to run 
```
chmod +x name_of_the_script 
```
and either put them in your path, or add this repo and its sub-folders to your path so you can execute them easily.

## OSX
For OSX users, this will be a bit of a process, but you'll need to install brew, along with some core-utils (gsed, etc.), and change the scripts just a bit (e.g. replace sed with gsed). This could likely be mitigated with POSIX compliance, but I'm still learning on that front. For now, I'll include instructions on how to install brew and these utils, as well as update the scripts in another markdown file.

## Windows
For windows, you'll either need to install the Linux Subsystem for windows which is now available, or install Cygwin. I'd recommend the former, as everything should "just work", as in the Linux case, but Cygwin could possibly cause some issues.


#!/bin/sh
# For this one, you'll need a submission script (submit.sh in this script) in the folder on the server, or in your git repository.
# This should be tailored to your own job management software, since my server uses SLURM, my submission script works for that.
cd ~/deployed
temp="$(git branch --show-current)$(git re-parse --short HEAD)"
! [[ -d $temp ]] && mkdir $temp && cd $temp && ../submit.sh

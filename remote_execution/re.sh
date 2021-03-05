#!/bin/sh
# This short script allows remote deployment and execution of scripts on a cluster over ssh.
# You need to change user@host to your username@your server's host name.
# To make this seamless, use ssh-copy-id to send your public key to a server and the ssh-add command to add your private key to your local user-agent so it automatically authenticates you.
# An example run would be re.sh -c current_execute.sh

while getopts "c" opt; do
  case $opt in
    c)
      rsync -av ./ user@host:~/deployed   
      shift 1
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

ssh user@host 'bash -s' < $1

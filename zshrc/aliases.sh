#!/bin/bash


###### Docker

alias dcls='docker container ls | awk '\''{print $1 "\t" $2}'\'''
alias dils='docker image ls'


###### Apt

alias install="sudo apt install"
alias remove="sudo apt remove --purge"
alias search="apt search"
alias update="sudo apt update"


###### Git

alias glog="git log --graph --decorate --abbrev-commit --all"

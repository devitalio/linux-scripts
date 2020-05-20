#!/bin/bash

#original command
comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)

#file1=~/.___
#file2=~/.__
#
#clean(){
#    rm $file1 $file2
#    return
#}
#
##generate list of initialy installed packages
#(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u) > $file2 
#
##generate list of manually installed packages
#(apt-mark showmanual | sort -u) > $file1 
#
##print only those that are manually installed but also not present in initially installed
#comm -23 $file1 $file2
#
##clean up
#clean

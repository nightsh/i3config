#!/bin/bash

wget -q --tries=10 --timeout=20 http://google.com
if [[ $? -eq 0 ]]; then
    echo $(aptitude search '~U' | wc -l)
    aptitude search '~U' | wc -l > ~/.updates.txt
else
    echo $(cat ~/.updates.txt)
fi



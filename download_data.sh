#!/bin/bash

mkdir data
cd data

awk -F, '{system( "git clone http://github.com/" $2"/"$3 " && mv " $3"/ " $1 " && cd " $1 " && git checkout $(git rev-parse "$4"^)")}' ../test.csv
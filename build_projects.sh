#!/bin/bash

cd data

awk -F, '{system( "cd " $1 " && " $2)}' build_commands.csv
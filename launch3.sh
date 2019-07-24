#!/usr/bin/env dash

./runner.sh > process3.sh

parallel --bar -eta -j 8 < process3.sh 


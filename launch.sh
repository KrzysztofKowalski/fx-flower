#!/usr/bin/env dash

find out -type f -iname '*.sh' > commands.sh

parallel --bar -eta -j 32 < commands.sh 
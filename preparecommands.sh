#!/usr/bin/env dash

basedir=/Users/k/code/fx

for a in `seq 0 100`
do
	for b in `seq 0 100`
	do
		
		commanddir="out/commands/${a}/"
		
		mkdir -p $commanddir
		
		x=$(( $a * 10 + 1 ))
		y=$(( $b * 10 + 1 ))
		z=1
		g=$x
		h=$y
		j=999
		increment=1
		./runner.sh "out/base" $x $y $z $g $h $j $increment $basedir > "${commanddir}/${b}.sh"
	done
done


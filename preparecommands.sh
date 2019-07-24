#!/usr/bin/env dash

basedir=$1

for a in `seq 0 100`
do
	aformat=`printf "%04d" $a `
	for b in `seq 0 100`
	do
		bformat=`printf "%04d" $b`
		commanddir="out/commands/${aformat}/"
		
		mkdir -p $commanddir
		
		x=$(( $a * 10 + 1 ))
		y=$(( $b * 10 + 1 ))
		z=1
		g=$x
		h=$y
		j=999
		increment=1
		
		
		./runner.sh "out/base" $x $y $z $g $h $j $increment $basedir > "${commanddir}/${bformat}.sh"
	done
done


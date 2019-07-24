#!/usr/bin/env dash
basedir=$1

sa=$2
sb=$3
sc=$4

ea=$5
eb=$6
ec=$7
m=$8
cxdir=$9

for a in `seq $sa $ea`
do
	printf "%s\n" "mkdir -p ${basedir}_$a"
	for b in `seq $sb $eb`
	do
		printf "%s\n" "mkdir -p ${basedir}_$a/$b"
		for c in `seq $sc $ec`
		do
			x=$(( $a * $m ))
			y=$(( $b * $m ))
			z=$(( $c * $m ))
			printf "%s %s %s %s %s\n" "${cxdir}/cx.csh" $x $y $z "${basedir}_$a/$b"
		done
	done
done


#!/usr/bin/env dash

sa=1
sb=$sa
sc=$sa

#max loop, complexity o(n3)
ox=999
#step used
m=1

cd /tmp/

for a in `seq $sa $ox`
do
	for b in `seq $sb $ox`
	do
		for c in `seq $sc $ox`
		do
			x=$(( $a * $m ))
			y=$(( $b * $m ))
			z=$(( $c * $m ))
			printf "%s %s %s %s\n" "./cx3.csh" $x $y $z
		done
	done
done


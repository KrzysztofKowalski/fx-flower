#!/usr/bin/env dash

sa=1
sb=$sa
sc=$sa

ox=42
m=24

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
			printf "%s %s %s %s\n" "./cx.csh" $x $y $z
		done
	done
done


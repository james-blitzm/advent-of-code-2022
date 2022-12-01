#!/bin/bash
v=0
e1=0
e2=0
e3=0
function compute(){
    (($v > $e1)) && e3=$e2 && e2=$e1 e1=$v || \
    { (($v > $e2)) && e3=$e2 && e2=$v || \
    { (($v > $e3)) && e3=$v; } ;}; }
while read p; do
    [[ $p = "" ]] && v=0 || v=$(($v + $p))
    compute
done < input-data.txt;
v=$(($v + $p))
compute
echo "$(($e1 + $e2 + $e3))"

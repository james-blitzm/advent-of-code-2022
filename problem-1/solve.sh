#!/bin/bash
v=0
m=0
t=0
while read p;
do
[[ $p = "" ]] && v=0 || v=$(($v + $p))
(($v > $m)) && m=$v
done < input-data.txt
(($v > $m)) && m=$v
echo $m

#!/bin/bash

v=0
m=0
while read p;
do
if [[ $p = "" ]];
then
v=0;
else
v=$(($v + $p));
(($v > $m)) && m=$v
fi
done < input-data.txt
# account for off-by-one
if (($v > $m))
then
m=$v
fi
echo $m

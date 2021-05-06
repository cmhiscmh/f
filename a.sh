#!/bin/dash
max=$1
min=$1
for i in $@
do 
if test $max -lt $i
then
max=$i

fi
if test $min -gt $i
then
min=$i
fi 
done
p=$min
while test $p -le $max
do
flag=1
for k in $@
do
if test $k -eq $p
then
flag=0
break
fi
done
if test $flag -eq 1
then
echo "$p"
exit 
fi
p=$(( $p + 1 ))
done
#!/bin/bash
# GNU bash, version 4.3.46

for ((i = 0; i< 100; i++)); do
  echo $i
done

for i in {1..5}; do
 echo "Welcome $i"
done

for i in {5..50..5}; do
 echo "Welcome $i"
done

for i in /etc/rc.*; do
 echo $i
done

<file.txt | while read line; do
  echo $line
done

while true; do

done

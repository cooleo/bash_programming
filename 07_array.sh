#!/bin/bash
# GNU bash, version 4.3.46

countries=('Vietnam' 'Ireland' 'USA')
echo ${countries[0]}
echo ${countries[1]}

 
for i in "${countries[@]}"; do
 echo $i
done

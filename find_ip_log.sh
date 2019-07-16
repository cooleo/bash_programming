#!/bin/bash

FILE=appache.log;
 for ip in `cat $FILE |cut -d ' ' -f 1 |sort |uniq`;
 do { 
 	 COUNT=`grep ^$ip $FILE |wc -l`;
     if [[ "$COUNT" -lt "500" ]]; 
     	then echo "$COUNT:   $ip";
     fi 
   }; 
done

#!/bin/bash
# GNU bash, version 4.3.46
declare -A sounds

sounds[dogs]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo ${sounds[dogs]}
echo ${sounds[cow]}

#echo ${!sounds[@]} #all keys
#echo ${sounds[@]} #all values

for val in "${sounds[@]}"; do
 echo $val
done

for key in "${!sounds[@]}"; do
  echo ${sounds[key]}
done

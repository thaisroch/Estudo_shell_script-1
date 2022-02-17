#!/usr/bin/env bash

#Aula 8

echo "----------------------for 1"

for(( i = 0; i < 10; i++ ));do
    echo $i
done

echo "----------------------for 2 (seq)"
for i in $(seq 10)
do
  echo $i
done

# Aula 9
echo "----------------------for 3 Array"
Contagem=(
'91'
'30'
'250'
'55'
)
for i in ${Contagem[@]}; do
  echo $i
done

echo "----------------------for 3 Array-string"
Fruta=(
'Laranja'
'Pera'
'Maça'
'Limão'
)
for i in "${Fruta[@]}"; do
  echo "$i"
done

echo "----------------------for 4 while"
contador=0

while [[ $contador -lt ${#Fruta[@]} ]]; do
  echo $contador
  contador=$(($contador+1))
done

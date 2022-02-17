#!/usr/bin/env bash

#Aula 7
VAR=""
VAR2=""

if [[ "$VAR" = "$VAR2" ]]; then
  echo "São iguais."
fi

if [[ "$VAR" = "$VAR2" ]]
then
  echo "São iguais."
fi

if test "$VAR" = "$VAR2"
then
  echo "São iguais."
fi

if ["$VAR" = "$VAR2"]
then
  echo "São iguais."
fi

["$VAR" = "$VAR2"] && echo "São iguais"
["$VAR" = "$VAR2"] || echo "São iguais"

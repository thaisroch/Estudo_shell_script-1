#!/usr/bin/env bash

PARAMETRO=1
if [ $parametro -gt 0]#valida numero 0?
then
  if[$PARAMETRO -gt 1] #valida numero 1?
  then
    if[ $PARAMETRO -gt 2]#valida numero 2?
    then
      echo "oi"
    fi
  fi
fi

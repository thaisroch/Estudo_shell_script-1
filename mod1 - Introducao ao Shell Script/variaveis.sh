#!/usr/bin/env bash

# Aula 4
echo "Teste"

#Aula 5
#ATRIBUIR STRING
NOME="Thais

Rocha"
echo "$NOME"

#ATRIBUIR SOMA
NUMERO_1=24
NUMERO_2=6
TOTAL=$(($NUMERO_1+$NUMERO_2))
echo $TOTAL

#ATRIBUIR COMANDO NA VARIAVEL
SAIDA_CAT=$(cat /etc/passwd | grep Thais)
echo $SAIDA_CAT

#Aula 6

echo "Parametro 1:"$1
echo "Parametro 2:"$2

echo "Todos os parametros:$*"

echo "Quantos parametros foram passados? $#"

echo "Saida do último comando: $?"

echo "PID: $$"

echo $0

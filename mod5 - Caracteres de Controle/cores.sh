#!/usr/bin/env bash

# --------------------------------------VARIAVEIS------------------------------#
CHAVE_DEBUG=0
NIVEL_DEBUG=0

ROXO="\033[35;1m]"
CIANO="\033[36;1m]"

# -----------------------------------------------------------------------------#

# ------------------------------------FUNÇÕES----------------------------------#
Debugar(){
  [ $1 -le $NIVEL_DEBUG ] && echo -e " ${2}Debug $* -----------"
}

Soma(){
  local total=0 #variavel apenas local

  for i in $(seq 1 25); do
      Debugar 1 "${CIANO}" "Entrei no for com o valor: $i"
      total=$(($total+$i))
      Debugar 2 "${ROXO}" "Depois da soma: $total"
  done
}
# ------------------------------------EXECUÇÃO---------------------------------#
case "$1" in
  -d) [ $2 ] && NIVEL_DEBUG=$2 ;;  #se passado o parametro 1 e for -d, será verificado
  #se existe o parametro 2, se existe atribui a variavel NIVEL_DEBUG.
   *) Soma                     ;;
esac

Soma #chamar uma função
# -----------------------------------------------------------------------------#

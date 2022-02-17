#Aula 24
#!/usr/bin/env bash
# debug3.sh - Entra no for e conta a passagem por ele e uma outra função, mostrando um modelo de debug.
# Autor: Thais Rocha
# Manutenção: Thais
#
# -----------------------------------------------------------------------------#
#
# exemplos:
#   $ ./debug3.sh -d 2
#   Neste exeplo entrará em um for e mostrará o valor incial e a soma dos valores,
#Passando pelo debug 1 e 2.
#
# -----------------------------------------------------------------------------#
# Histórico:
#
#   v1.0 17/02/2022, Thais:
#      - Adicionado -d com parametro 1 e 2.
#
# -----------------------------------------------------------------------------#
# Testando em:

#   bash 5.0.17
# -----------------------------------------------------------------------------#
#
# --------------------------------------VARIAVEIS------------------------------#
CHAVE_DEBUG=0
NIVEL_DEBUG=0
# -----------------------------------------------------------------------------#

# ------------------------------------FUNÇÕES----------------------------------#
Debugar(){
  [ $1 -le $NIVEL_DEBUG ] && echo "Debug $* -----------"
}

Soma(){
  local total=0 #variavel apenas local

  for i in $(seq 1 25); do
      Debugar 1 "Entrei no for com o valor: $i"
      total=$(($total+$i))
      Debugar 2 "Depois da soma: $total"
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

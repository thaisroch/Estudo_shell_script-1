#Aula 23
#
#utilizando o comando de debug no código: set -x ..... set +x
#
#!/usr/bin/env bash

# listaUsuario.sh - Estrai usuários do /etc/passwd
#
# Site: http://seusite.com.br
# Autor: Thais Rocha
# Manutenção: Thais
#
# -----------------------------------------------------------------------------#
#
# Irá extrair usuários do /etc/passwd, havendo a possibilidade de colocar em
# maiúsculo e em ordem alfabética.
#
# exemplos:
#   $ ./listaUsuario.sh -s -m
#   Neste exeplo ficará em maiúsculo e em ordem alfabética.
#
# -----------------------------------------------------------------------------#
# Histórico:
#
#   v1.0 16/02/2022, Thais:
#      - Adicionado -s -h & -v
#   v1.1 16/02/2022, Thais:
#
# -----------------------------------------------------------------------------#
# Testando em:
#   bash 5.0.17
# -----------------------------------------------------------------------------#
#
# --------------------------------------VARIAVEIS------------------------------#
USUARIOS="$(cat /etc/passwd| cut -d : -f1)"
MENSAGEM_USO="
  $(basename $0) - [OPÇÕES]

    -h - Menu de ajuda
    -v - Versão
    -s - Ordenar a saída
    -m - Colocar em maiúsculo
"
VERSAO="v1.3"

CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0


# -----------------------------------------------------------------------------#




# ------------------------------------TESTES-----------------------------------#




# ------------------------------------FUNÇÕES----------------------------------#




# ------------------------------------EXECUÇÃO---------------------------------#
set -x
while test -n "$1"
do
  case "$1" in
    -h)  echo "$MENSAGEM_USO" && exit 0             ;;
    -v)  echo "$VERSAO" && exit 0                   ;;
    -s)  CHAVE_ORDENA=1                             ;;
    -m)  CHAVE_MAISCULO=1                           ;;
     *)  echo "Opção invalida acesse o menu com -h" ;;
  esac
  shift
done

[ $CHAVE_ORDENA -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | sort)
[ $CHAVE_MAISCULO -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | tr [a-z] [A-Z])

echo "$USUARIOS"

set +x
# -----------------------------------------------------------------------------#

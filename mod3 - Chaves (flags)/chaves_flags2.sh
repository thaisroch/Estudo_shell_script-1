# Aula 17
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
#   v1.0 18/08/2018, Thais:
#
# -----------------------------------------------------------------------------#
# Testando em:
#   bash 5.0.17
# -----------------------------------------------------------------------------#
#
# --------------------------------------VARIAVEIS------------------------------#
USUARIOS="$(cat /etc/passwd| cut -d : -f1)"
MENSAGEM_USO="
  $0 - [OPÇÕES]

    -h - Menu de ajuda
    -v - Versão
    -s - Ordenar a saída
"
VERSAO="v1.0"
# -----------------------------------------------------------------------------#




# ------------------------------------TESTES-----------------------------------#




# ------------------------------------FUNÇÕES----------------------------------#




# ------------------------------------EXECUÇÃO---------------------------------#
if [ "$1" = "-h" ]; then
  echo "$MENSAGEM_USO" && exit 0
fi

if [ "$1" = "-v" ]; then
  echo "$VERSAO" && exit 0
fi

if [ "$1" = "-s" ]; then
  echo "$USUARIOS" | sort && exit 0
fi

echo "$USUARIOS"
# -----------------------------------------------------------------------------#

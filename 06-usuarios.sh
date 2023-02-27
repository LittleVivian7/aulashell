#!/bin/bash

#################################

#Nome do script: usuarios.sh
#Descrição: lista usuarios.
#Vesão: 2.0
#Licença:
#Autor: Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com

#################################

# Lê o arquivo /etc/passwd e extrai os nomes de usuário e diretórios de inicialização
USERS=$(cut -d: -f1,6 /etc/passwd)

# Usa o Zenity para criar uma lista interativa de usuários
SELECTED=$(echo "$USERS" | zenity --list --title "Usuários" --column "Nome de usuário" --column "Diretório de inicialização" --height 500)

# Verifica se o usuário selecionou um item da lista
if [ -n "$SELECTED" ]; then
  # Extrai o nome de usuário selecionado da saída do Zenity
  USERNAME=$(echo "$SELECTED" | cut -d: -f1)

  # Obtém informações adicionais sobre o usuário selecionado e exibe-as em uma caixa de diálogo
  USER_INFO=$(cat /etc/passwd | grep "^$USERNAME:")
  zenity --info --title "Informações do usuário" --text "$USER_INFO"
fi

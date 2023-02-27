#!/bin/bash

#################################

#Nome do script: tela.sh
#Descrição: exibe tela de login.
#Vesão: 2.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com

#################################

# Exibe a caixa de diálogo de login
USERNAME=$(zenity --entry --title "Login" --text "Entre com o usuário:")
PASSWORD=$(zenity --password --title "Login" --text "Entre com a senha:")

# Verifica se o nome de usuário e senha estão corretos
if [[ $USERNAME == "Vivian" && $PASSWORD == "123" ]]; then
  zenity --info --title "Login" --text "Acesso permitido!"
else
  zenity --error --title "Login" --text "Acesso negado!"
fi
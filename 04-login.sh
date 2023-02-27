#!/bin/bash

#################################

#Nome do script: login.sh
#Descrição: Login.
#Vesão: 2.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com

#################################

# Exibe a caixa de diálogo de login
USERNAME=$(zenity --entry --title "Login" --text "Nome de usuário:")
PASSWORD=$(zenity --password --title "Login" --text "Senha:")

# Verifica se o nome de usuário e senha estão corretos
if [[ $USERNAME = "Vivian" && $PASSWORD = "123456" ]]; then
    # Exibe uma caixa de mensagem informando que o login foi bem-sucedido
    zenity --info --title="Sucesso" --text="Login bem-sucedido!"
  else
    # Exibe uma caixa de mensagem informando que o login falhou
    zenity --error --title="Falha no login" --text="Nome de usuário ou senha incorretos."
fi


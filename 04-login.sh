#!/bin/bash

#################################

#Nome do script: login.sh
#Descrição: Login.
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:-

#################################
#FALA FRASE E LE BASEADO EM UMA RESPOSTA
echo "Enter username:"
read username
#PERGUNTA A SENHA 
echo "Enter password:"
read -s password
#SE NOME FOR IGUAL E SENHA IGUAL, SUCESSO CASO NAO SEJA FALHA
if [ "$username" == "Vivian" ] && [ "$password" == "123" ]; then
  echo "Login sucessful!"
else
  echo "Login failed. Incorret username or password."
fi

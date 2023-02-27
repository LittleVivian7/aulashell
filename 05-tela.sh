#!/bin/bash

#################################

#Nome do script: tela.sh
#Descrição: exibe tela de login.
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:-

#################################

username=$(dialog --inputbox "entre com o usuario" 10 30 --output-fd 1)
password=$(dialog --passwordbox "entre com a senha" 10 30 --output-fd 1)

if [ $username == "Vivian" ] && [%password == "123" ]; then

 dialog --msgbox "Acesso permitido" 10 30 
else
 dialog --msgbox "Acesso Negado" 10 30
fi

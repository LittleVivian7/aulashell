#! /bin/bash

#################################

#Nome do script: helloword.sh
#Descrição: Acolhe o Usuário.
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com

#################################

#FALA A FRASE EM UMA CAIXA DE DIÁLOGO ZENITY.
frase="helloword meu querido amigo, entre, faça a festa, tenho várias opções pra você brincar rsrs!"
zenity --info --title "Love" --text "$frase"

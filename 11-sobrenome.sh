#!/bin/bash

#################################

#Nome do script: sobrenome.sh
#Descrição: sobrenome.sh
#Versão: 1.0
#Lincença:
#Autor: Viviane dos Santos
#E-mail:

#################################

#ESCOLHE O NOME E APRESENTA CAIXA DE TEXTO
name=$(zenity --title="Name?" --text "What is your name?" --entry)
#ESCOLHE SOBRENOME E APRESENTA CAIXA DE TEXTO
lastname=$(zenity --title="Lastname" --text "$What is your lastname?" --entry)
#CAIXA DE TEXTO DE DESPEDIDA
zenity --info --title="Senac Minas" --text="Be more every day $name $lastname. Good studies"

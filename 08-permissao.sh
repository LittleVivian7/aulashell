#!/bin/bash

#################################

#Nome do script: permissao.sh
#Descrição: Permissao
#Versão: 1.0
#Lincença: 
#Autor: Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com

#################################

# Verifica se o script está sendo executado em uma pasta do usuário
if [ "$(pwd)" = "/home/$USER" ]; then
    zenity --error --title "Erro" --text "Este script não pode ser executado na pasta raiz do usuário."
    exit 1
fi

# Exibe uma janela com as opções de permissões
permissao=$(zenity --list --title "Permissão da pasta" --column "Código" --column "Permissão" 777 "rwx.rwx.rwx" 764 "rwx.rw-.r--" 755 "rwx.r-x.r-x" 644 "rw-.r--.r--")

# Verifica se uma opção foi selecionada
if [ $? = 0 ]; then
    # Altera a permissão da pasta
    chmod $permissao "$(pwd)"
    zenity --info --title "Permissão da pasta" --text "Permissão da pasta alterada para $permissao."
else
    zenity --info --title "Permissão da pasta" --text "Permissão da pasta não foi alterada."
fi

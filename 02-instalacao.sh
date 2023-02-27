#!/bin/bash

#################################

#Nome do script: instalação.sh
#Descrição: instalção.sh
#Vesão: 2.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com

#################################

zenity --info --text "Atualizando repositórios..."

if ! apt-get update; then
    zenity --error --title "Erro!" --text "Não foi possível atualizar os repositórios. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi

zenity --info --title "Sucesso!" --text "Atualização de repositórios feita com sucesso"

zenity --info --text "Atualizando pacotes já instalados..."

if ! apt-get dist-upgrade -y; then
    zenity --error --title "Erro!" --text "Não foi possível atualizar pacotes já instalados."
    exit 1
fi

zenity --info --title "Sucesso!" --text "Atualização de pacotes já instalados feita com sucesso."


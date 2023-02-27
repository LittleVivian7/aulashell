#!/bin/bash

#################################

#Nome do script:store.sh
#Descrição: store.sh.
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com

#################################

#Lista apps que podem ser instalados.
options=("Vim" "Nano" "Chrome" "VSCode" "Quit")

#Abre uma caixa zenity com as opções de app que podem ser instalados.

choice=$(zenity --list --title="Aplicativos para instalar" --text="Selecione os aplicativos para instalar" --column="Aplicativos" "${options[@]}")

case $choice in
  "Vim")
    echo "Instalando o Vim..."
    # Adicione aqui o código para instalar o Vim
    zenity --info --title="Instalação concluída" --text="O Vim foi instalado com sucesso!"
    ;;
  "Nano")
    echo "Instalando o Nano..."
    # Adicione aqui o código para instalar o Nano
    zenity --info --title="Instalação concluída" --text="O Nano foi instalado com sucesso!"
    ;;
  "Chrome")
    echo "Instalando o Chrome..."
    # Adicione aqui o código para instalar o Chrome
    zenity --info --title="Instalação concluída" --text="O Chrome foi instalado com sucesso!"
    ;;
  "VSCode")
    echo "Instalando o VSCode..."
    # Adicione aqui o código para instalar o VSCode
    zenity --info --title="Instalação concluída" --text="O VSCode foi instalado com sucesso!"
    ;;
  "Quit")
    exit
    ;;
esac

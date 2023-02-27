#!/bin/bash

#################################

#Nome do script: aplicativos.sh
#Descrição: aplicativos.sh
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com

#################################

options=("Vim" "Nano" "Chrome" "VSCode")

#Abre uma caixa zenity com um barra para pesquisa do app a ser instalado.

choice=$(zenity --entry --title="Aplicativos para instalar" --text="Digite o nome do aplicativo para instalar:" --entry-text "")

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
  *)
    zenity --error --title="Erro" --text="Aplicativo não encontrado. Tente novamente."
    ;;
esac
#!/bin/bash

#################################

#Nome do script: baixar.sh
#Descrição: baixar.sh
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com

#################################

#SE O ID NÃO FOR ROOT SOLICITA ISSO
#INSTALA O WGET
if [ "$EUID" -ne 0 ]; then
  echo "Este script precisa ser executado como root."
  exit
fi

apt-get install wget

wget http://fisica.ufpr.br/kurumin/kurumin-7.0.iso


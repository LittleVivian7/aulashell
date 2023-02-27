#!/bin/bash

#################################

#Nome do script: helloword.sh
#Descrição: Diz Ola.
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com

#################################

#Faz backup da pasta scripts

# Adiciona a data e hora ao nome do arquivo de backup
data_hora=$(date +%Y%m%d%H%M%S)
backup_file="bkp_${data_hora}.tar.gz"

zenity --question --title="Fazer Backup" --text="Deseja fazer backup dos arquivos .sh em /home/vivian/scripts/ para /home/vivian/bkp?"
if [ $? -eq 0 ]; then
  # Cria o backup compactado
  tar -czvf "/home/vivian/bkp/${backup_file}" /home/vivian/scripts/*.sh

  zenity --info --title="Sucesso" --text="O backup dos arquivos foi feito com sucesso." --width=200 --height=100
else
  zenity --info --title="Cancelado" --text="O backup dos arquivos foi cancelado." --width=200 --height=100
fi
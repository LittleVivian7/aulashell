#!/bin/bash

#################################

#Nome do script: progresso.sh
#Descrição: progreso.sh
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com

#################################

# Verifica se o zenity está instalado
if ! command -v zenity &> /dev/null; then
  echo "O Zenity não está instalado. Por favor, instale-o primeiro."
  exit 1
fi

# Exibe o indicador de progresso com o zenity
(
  for i in {1..100}; do
    echo "$i"
    sleep 0.1
  done
) | zenity --progress --auto-close --title="Indicador de progresso"

# Exibe uma mensagem ao usuário ao finalizar o progresso
zenity --info --text="Progresso concluído" --title="Aviso"

#!/bin/bash

#################################

#Nome do script: monitor.sh
#Descrição: monitor.sh
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:-

#################################

#VIGIA UM ARQUIVO EM UMA PASTA
#CASO ECONTRE ESSE ARQUIVO ELE O EXCLUI
#CASO ESTEJA ATIVO NÃO DEIXA SER SALVO O ARQUIVO COM O NOME SACI.TXT
zenity --progress --pulsate --text="Vigiando a saci.txt" &
pid=$!
while true
do
  if [ -f "saci.txt" ]; then
      echo "Alguém criou o saci.txt"
      sudo   rm "saci.txt"
      echo "Saci foi removido com sucesso!"
      kill $pid
      zenity --info --text="Saci foi removido com sucesso!"
      zenity --progress --pulsate --text="Vigiando o saci.txt" &
pid=$!
  fi
  sleep 1
done

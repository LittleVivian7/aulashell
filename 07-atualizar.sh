#!/bin/bash

#################################

#Nome do script: atualizar.sh
#Descrição: Atualiza.
#Vesão: 3.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com  

#################################

# Exibe uma caixa de diálogo perguntando se o usuário deseja atualizar o sistema
zenity --question --title "Atualizar sistema" --text "Deseja atualizar o sistema?"

# Verifica se o usuário selecionou "Sim"
if [ $? = 0 ]; then
  # Atualiza a lista de pacotes e exibe uma barra de progresso
  echo "Atualizando lista de pacotes..."
  (sudo apt-get update | tee /dev/stderr) | zenity --progress --title "Atualizando lista de pacotes" --auto-close --auto-kill --no-cancel --text "Atualizando lista de pacotes..."
  
  # Verifica se a atualização da lista de pacotes foi bem sucedida
  if [ $? = 0 ]; then
    zenity --info --title "Atualização concluída" --text "A atualização da lista de pacotes foi concluída com sucesso."
  else
    zenity --error --title "Erro ao atualizar a lista de pacotes" --text "Ocorreu um erro ao atualizar a lista de pacotes. Verifique a saída do terminal para mais informações."
  fi

  # Atualiza os pacotes instalados e exibe uma barra de progresso
  echo "Atualizando pacotes instalados..."
  (sudo apt-get upgrade -y | tee /dev/stderr) | zenity --progress --title "Atualizando pacotes instalados" --auto-close --auto-kill --no-cancel --text "Atualizando pacotes instalados..."

  # Verifica se a atualização dos pacotes instalados foi bem sucedida
  if [ $? = 0 ]; then
    zenity --info --title "Atualização concluída" --text "A atualização dos pacotes instalados foi concluída com sucesso."
  else
    zenity --error --title "Erro ao atualizar os pacotes instalados" --text "Ocorreu um erro ao atualizar os pacotes instalados. Verifique a saída do terminal para mais informações."
  fi

  # Remove pacotes desnecessários e exibe uma barra de progresso
  echo "Removendo pacotes desnecessários..."
  (sudo apt-get autoremove -y | tee /dev/stderr) | zenity --progress --title "Removendo pacotes desnecessários" --auto-close --auto-kill --no-cancel --text "Removendo pacotes desnecessários..."

  # Verifica se a remoção dos pacotes desnecessários foi bem sucedida
  if [ $? = 0 ]; then
    zenity --info --title "Remoção concluída" --text "A remoção dos pacotes desnecessários foi concluída com sucesso."
  else
    zenity --error --title "Erro ao remover os pacotes desnecessários" --text "Ocorreu um erro ao remover os pacotes desnecessários. Verifique a saída do terminal para mais informações."
  fi
else
  zenity --info --title "Atualização cancelada" --text "A atualização do sistema foi cancelada pelo usuário."
fi
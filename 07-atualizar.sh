#!/bin/bash

#################################

#Nome do script: atualizar.sh
#Descrição: Atualiza.
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:-

#################################

#PERGUNTA E DA O COMANDO
echo "Atualizando lista de pacotes..."
sudo apt-get update

echo "Atualizando pacotes instalados..."
sudo apt-get upgrade -y

echo "Removendo pacotes desnecessários..."
sudo apt-get autoremove -y


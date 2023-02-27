#!/bin/bash

#################################

#Nome do script: instalação.sh
#Descrição: instalção.sh
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:-

#################################

echo "Atualizando repositorios.."
if ! apt-get update
then
echo "Não foi possível atualizar os repositórios. Verifique seu arquivo /etc/apt/sources.list"
exit 1
fi
echo "Atualizando feita com sucesso"
echo "Atualizando pacotes já instalados"
if ! apt-get dist-upgrade -y
then
echo "Não foi possível instalar o pacote $1"
fi 
echo "Instalação finalizada"


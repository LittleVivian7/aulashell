#!/bin/bash

#################################

#Nome do script: banco.sh
#Descrição: banco.sh
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com

#################################

# Define as variáveis de conexão
DB_USER="vivian"
DB_PASS="654321"
DB_HOST="localhost"
DB_NAME="vivianbanco"

# Define as variáveis de conexão com o banco de dados
HOST="localhost"
USER="vivian"
PASSWORD="654321"

# Pergunta o nome do novo banco de dados
read -p "Digite o nome do banco:" DATABASE

# Cria o novo banco de dados
mysql -h $HOST -u $USER -p$PASSWORD -e "CREATE DATABASE $DATABASE;"

# Verifica se a criação do banco de dados foi bem sucedida
if [ $? -eq 0 ]; then
  echo "Banco de dados $DATABASE criado com sucesso!"
else
  echo "Houve um erro ao criar o banco de dados $DATABASE."
fi


# Testa a conexão com o banco de dados
if mysql -u"$DB_USER" -p"$DB_PASS" -h"$DB_HOST" -e "use $DB_NAME" &> /dev/null; then

zenity --info --text="Conexão com o banco de dados bem sucedida"
else
  zenity --error --text="Erro ao conectar ao banco de dados"
fi

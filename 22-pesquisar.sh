#!/bin/bash

DB_USER="vivian"
DB_PASS="654321"
DB_HOST="localhost"
DB_NAME="vivianbanco"

nome=$(zenity --entry --title "Pesquisar nome" --text "Digite o nome a ser pesquisado:")

if [ "$nome" == "todos" ]; then
    # Se for "todos", execute uma consulta SQL para listar todo o conteúdo da tabela nome
    resultado=$(mysql -u "$DB_USER" -p"$DB_PASS" -h "$DB_HOST" "$DB_NAME" -e "SELECT * FROM nome_completo")
else
    # Caso contrário, execute uma consulta SQL para buscar o nome informado na tabela "nome"
    resultado=$(mysql -u "$DB_USER" -p"$DB_PASS" -h "$DB_HOST" "$DB_NAME" -e "SELECT * FROM nome_completo WHERE nome='$nome'")

    formated_result=$(echo "$resultado" | awk 'BEGIN { FS="\t"; OFS="\n" } { print "Nome completo: "$2, "Telefone: "$3, "E-mail: "$4, "Data de aniversário: "$5 }')

fi

zenity --text-info --title "Resultado da pesquisa" --width 400 --height 300 --editable --filename=- <<< "$formated_result"

#!/bin/bash

#################################

#Nome do script: cadastro.sh
#Descrição: cadastro.sh
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com
#Colaborador: Rafhael de Moraes

#################################

# Lê as informações do usuário usando zenity
nome=$(zenity --entry --title="Nome" --text="Digite o nome:")
telefone=$(zenity --entry --title="Telefone" --text="Digite o telefone:")
email=$(zenity --entry --title="E-mail" --text="Digite o e-mail:")
aniversario=$(zenity --entry --title="Aniversário" --text="Digite o aniversário (no formato YYYY-MM-DD):")

# Conecta ao banco de dados "vivianbanco" e insere as informações nas tabelas correspondentes
mysql -u root -p vivianbanco <<EOF
# Insere as informações na tabela "nome"
INSERT INTO nome (nome_completo) VALUES ("$nome");

# Obtém o ID do último registro inserido na tabela "nome"
SET @id_nome = LAST_INSERT_ID();

# Insere as informações na tabela "telefone"
INSERT INTO telefone (nome_id, numero) VALUES (@id_nome, "$telefone");

# Insere as informações na tabela "email"
INSERT INTO email (nome_id, endereco) VALUES (@id_nome, "$email");

# Insere as informações na tabela "aniversario"
INSERT INTO aniversario (nome_id, data) VALUES (@id_nome, "$aniversario");
EOF

# Exibe mensagem de sucesso usando zenity
zenity --info --title "Sucesso!" --text "Informações salvas com sucesso!"

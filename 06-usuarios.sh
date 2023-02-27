#!/bin/bash

#################################

#Nome do script: usuarios.sh
#Descrição: lista usuarios.
#Vesão: 1.0
#Licença:
#Autor: Viviane dos Santos
#E-mal:-

#################################

#ENCONTRA USUARIOS DA PASTA
#awk -f '{print $1}' /etc/passwd
#cat /etc/passwd | cut -d: -f 1
cat /etc/passwd


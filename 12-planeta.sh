#!/bin/bash

#################################

#Nome do script: planeta.sh
#Descrição: planeta.sh
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com

#################################

#FAZ UMA PERGUNTA EM UMA CAIXA DE TEXTO
resposta=$(zenity --list --text "Em qual planeta vocẽ vive?" --radiolist --column "Escolha" --column "Planeta" FALSE "Marte" FALSE "Terra" TRUE "Nenhum???")
#SE A RESPOSTA FOR ALGUMA DAS OPÇÕES EXIBE UMA MENSAGEM
if [ "$resposta" = "Marte" ]; then
  zenity --info --text "Você é um Marciano."
elif [ "$resposta" = "Terra" ]; then
  zenity --info --text "Você é um Terraqueo."
else
  zenity --info --text "Então me desculpe mas você é um lixo intergalático."
fi




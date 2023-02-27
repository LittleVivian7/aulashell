#!/bin/bash

#################################

#Nome do script: pergunta.sh
#Descrição: Uma pergunta.
#Vesão: 2.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com

#################################

#Solicitação de entrada de texto ao usuário
sexo=$(zenity --entry --title "Fala ai pra mim!" --text "Qual seu estado civíl, solteiro(a) ou ajuntado(@)?")

#Condição para verificar a entrada de texto do usuário e exibir mensagem correspondente
if [[ "$sexo" == "solteiro" ]] || [[ "$sexo" == "SOLTEIRO" ]] || [[ "$sexo" == "Solteiro" ]] || [[ "$sexo" == "solteira" ]] || [[ "$sexo" == "SOLTEIRA" ]] || [[ "$sexo" == "Solteira" ]]; then                                                                                  
  zenity --info --title "Parabéns Poh@" --text "Pode entrar, Sentar e tomar um café, em você eu boto fé!"
elif [[ "$sexo" == "ajuntado" ]] || [[ "$sexo" == "AJUNTADO" ]] || [[ "$sexo" == "Ajuntado" ]] || [[ "$sexo" == "ajuntada" ]] || [[ "$sexo" == "AJUNTADA" ]] || [[ "$sexo" == "Ajuntada" ]]; then                                    
  zenity --info --title "Deu sua hora, vaza fora ! " --text "Já toma seu rumo que eu não assumo!(mas se for amigo ta dboa!)"
else
  zenity --error --title "OPS, não entendi!" --text "Tenta de novo por favor? E lembra, só entendo duas opções okay, solteiro(a) e ajuntado(a)!"
fi

#!/bin/bash

#################################

#Nome do script: soma.sh
#Descrição: soma.sh
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:vivian.infotechnology@gmail.com

#################################

# Exibe uma caixa de diálogo perguntando qual operação o usuário deseja realizar
operacao=$(zenity --list --title "Calculadora" --column "Operação" "Soma" "Subtração" "Multiplicação" "Divisão")

# Verifica se o usuário selecionou uma operação
if [ $? = 0 ]; then
  # Exibe caixa de diálogo para informar o primeiro número
  num1=$(zenity --entry --title "Calculadora" --text "Informe o primeiro número:")

  # Verifica se o usuário informou o primeiro número
  if [ $? = 0 ]; then
    # Exibe caixa de diálogo para informar o segundo número
    num2=$(zenity --entry --title "Calculadora" --text "Informe o segundo número:")

    # Verifica se o usuário informou o segundo número
    if [ $? = 0 ]; then
      # Realiza a operação selecionada e exibe o resultado em uma caixa de diálogo
      case $operacao in
        "Soma") zenity --info --title "Calculadora" --text "$(echo "$num1 + $num2" | bc)";;
        "Subtração") zenity --info --title "Calculadora" --text "$(echo "$num1 - $num2" | bc)";;
        "Multiplicação") zenity --info --title "Calculadora" --text "$(echo "$num1 * $num2" | bc)";;
        "Divisão") zenity --info --title "Calculadora" --text "$(echo "$num1 / $num2" | bc)";;
      esac
    else
      # Exibe uma mensagem de erro caso o usuário não tenha informado o segundo número
      zenity --error --title "Calculadora" --text "Operação cancelada. Segundo número não informado."
    fi
  else
    # Exibe uma mensagem de erro caso o usuário não tenha informado o primeiro número
    zenity --error --title "Calculadora" --text "Operação cancelada. Primeiro número não informado."
  fi
else
  # Exibe uma mensagem de erro caso o usuário não tenha selecionado uma operação
  zenity --error --title "Calculadora" --text "Operação cancelada. Nenhuma operação selecionada."
fi
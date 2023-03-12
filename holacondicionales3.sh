#!/bin/bash

# Comparaciones con numeros
# WORD=8
# if [ $WORD -eq 10 ]; then #si son igual WORD=8 y el valor 10
# if [ $WORD -ne 10 ]; then #si no son igual
# if [ $WORD -lt 10 ]; then #si es menor
# if [ $WORD -gt 10 ]; then #si es mayor
# if [ $WORD -le 10 ]; then #si es menor o igual
# if [ $WORD -ge 5 ]; then #si es mayor o igual
#     echo "Run is fun!!"
# else
#     echo "--------"

# fi


# Comparaciones strings3

WORD_TO_TEST3="runtest33"
WORD3="run33"
WORD4="run43"
WORD_TO_TEST4="runtest4"



if ([ "$WORD_TO_TEST3" == "runtest3" ] || [ "$WORD3" == "run3" ] || [ "$WORD4" == "run4" ] || [ "$WORD_TO_TEST4" == "runtest4" ]); then

echo "Running is fun!!"
else
echo "--------"
fi


# Ejemplo2
# CONTADOR=0

# #Cuando sea menor o igual
# while [ $CONTADOR -lt 6 ]; do
#     if [ $CONTADOR -eq 0 ]; then
#         echo "El contador es cero"
#     else
#         echo "El contador es diferente a cero"
#     fi
#     CONTADOR=$(($CONTADOR + 1))
#     sleep 3s
# done

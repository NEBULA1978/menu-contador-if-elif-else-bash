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

# Ejemplo con mezcla de contador y comparador


WORD1="run1"
WORD_TO_TEST1="runtest1"
WORD2="run2"
WORD_TO_TEST2="runtest2"

CONTADOR=0

while [ $CONTADOR -lt 6 ]; do
if [ $CONTADOR -eq 0 ] || [ $WORD_TO_TEST1 == "runtest1" ] || [ $WORD1 == "run1" ] || [ $WORD2 == "run2" ] || [ $WORD_TO_TEST2 == "runtest2" ]; then
echo "Running is fun!!"
else
echo $CONTADOR
fi
CONTADOR=$(($CONTADOR + 1))
sleep 1s
done
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

# //////////////////////////////////////////////////////////////////
# //////////////////////////////////////////////////////////////////

# Agregamos un elif con comparadores and y or y otro elif con not and y or con cuatro condiciones, aquí está el código:

CONTADOR=0
INTENTOS=0
NUM_TO_COMPARE=0

while [ $CONTADOR -lt 9 ]; do
NUM1=$((RANDOM % 10 + 1))
NUM2=$((RANDOM % 10 + 1))
NUM3=$((RANDOM % 10 + 1))
NUM4=$((RANDOM % 10 + 1))
NUM_TO_TEST1=$((RANDOM % 10 + 1))
NUM_TO_TEST2=$((RANDOM % 10 + 1))
NUM_TO_TEST3=$((RANDOM % 10 + 1))
NUM_TO_TEST4=$((RANDOM % 10 + 1))

if [ $CONTADOR -eq "$NUM_TO_COMPARE" ] || [ $NUM1 -eq "$NUM_TO_TEST1" ] || [ $NUM2 -eq "$NUM_TO_TEST2" ] || [ $NUM3 -eq "$NUM_TO_TEST3" ] || [ $NUM4 -eq "$NUM_TO_TEST4" ]; then
echo "Intento $INTENTOS: Número correcto ($CONTADOR)"
INTENTOS=$(($INTENTOS + 1))
elif [ "$CONTADOR" -gt 3 ] && [ "$NUM1" -gt 5 ] || [ "$NUM2" -gt 5 ] && [ "$NUM3" -gt 5 ] || [ "$NUM4" -gt 5 ]; then
echo "Intento $INTENTOS: Números mayores a 5"
INTENTOS=$(($INTENTOS + 1))
elif ! [ "$CONTADOR" -gt 3 ] || ! [ "$NUM1" -gt 5 ] && ! [ "$NUM2" -gt 5 ] && ! [ "$NUM3" -gt 5 ] && ! [ "$NUM4" -gt 5 ]; then
echo "Intento $INTENTOS: Números no mayores a 5"
INTENTOS=$(($INTENTOS + 1))
else
echo "Intento $INTENTOS: El número $CONTADOR no es correcto"
INTENTOS=$(($INTENTOS + 1))
fi
CONTADOR=$(($CONTADOR + 1))
sleep 1s
done

# El comando RANDOM en bash genera un número aleatorio entre 0 y 32767. En este caso, se está utilizando la operación % (módulo) para limitar el rango de los números generados a un valor específico (en este caso, 10). Luego, se está añadiendo 1 al resultado para que el rango sea de 1 a 10 en lugar de 0 a 9.

# Así, cada vez que se ejecuta la línea NUM1=$((RANDOM % 10 + 1)), se genera un número aleatorio entre 1 y 10 y se asigna a la variable NUM1. Lo mismo sucede con las otras variables NUM2, NUM3, NUM4, NUM_TO_TEST1, NUM_TO_TEST2, NUM_TO_TEST3 y NUM_TO_TEST4.
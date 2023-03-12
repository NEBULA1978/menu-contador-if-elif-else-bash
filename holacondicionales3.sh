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

CONTADOR=0

while [ $CONTADOR -lt 6 ] || [ "$WORD_TO_TEST3" == "runtest3" ]; do
if [ $CONTADOR -eq 0 ]; then
echo "El contador es cero"
else
echo "El contador es diferente a cero"
fi
if [ "$WORD_TO_TEST3" == "runtest3" ]; then
echo "La palabra WORD_TO_TEST3 es igual a runtest3"
else
echo "La palabra WORD_TO_TEST3 es diferente a runtest3"
fi
CONTADOR=$(($CONTADOR + 1))
sleep 3s
done

# Este código ejecuta un bucle "while" que continuará ejecutándose hasta que se cumpla alguna de las dos condiciones:

#     El contador sea menor que 6.
#     La variable WORD_TO_TEST3 sea igual a "runtest3".

# Dentro del bucle, hay una estructura de control "if-else" que evalúa el valor del contador y de la variable WORD_TO_TEST3 en cada iteración. Si el contador es igual a cero, se imprimirá "El contador es cero". De lo contrario, se imprimirá "El contador es diferente a cero". De igual manera, si la variable WORD_TO_TEST3 es igual a "runtest3", se imprimirá "La palabra WORD_TO_TEST3 es igual a runtest3". De lo contrario, se imprimirá "La palabra WORD_TO_TEST3 es diferente a runtest3".

# Después de cada iteración, el contador se incrementa en 1 y se espera 3 segundos antes de continuar con la siguiente iteración.

# La mezcla de comparaciones con el contador permite realizar múltiples evaluaciones y acciones en cada iteración del bucle.

# el resultado por consola

# El contador es cero
# La palabra WORD_TO_TEST3 es diferente a runtest3
# El contador es diferente a cero
# La palabra WORD_TO_TEST3 es diferente a runtest3
# El contador es diferente a cero
# La palabra WORD_TO_TEST3 es diferente a runtest3
# El contador es diferente a cero
# La palabra WORD_TO_TEST3 es diferente a runtest3
# El contador es diferente a cero
# La palabra WORD_TO_TEST3 es diferente a runtest3
# El contador es diferente a cero
# La palabra WORD_TO_TEST3 es diferente a runtest3


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


#  las 4 variables cambien aleatoriamente cada segundo:

# EJEJMPLO1

# WORD1="run1"
# WORD_TO_TEST1="runtest1"
# WORD2="run2"
# WORD_TO_TEST2="runtest2"

# CONTADOR=0

# while [ $CONTADOR -lt 6 ]; do
# WORD1="run$((RANDOM % 10 + 1))"
# WORD_TO_TEST1="runtest$((RANDOM % 10 + 1))"
# WORD2="run$((RANDOM % 10 + 1))"
# WORD_TO_TEST2="runtest$((RANDOM % 10 + 1))"

# if [ $CONTADOR -eq 0 ] || [ $WORD_TO_TEST1 == "runtest1" ] || [ $WORD1 == "run1" ] || [ $WORD2 == "run2" ] || [ $WORD_TO_TEST2 == "runtest2" ]; then
# echo "Running is fun!!"
# else
# echo $CONTADOR
# fi
# CONTADOR=$(($CONTADOR + 1))
# sleep 1s
# done

# ////////////////////////////////////77
# ////////////////////////////////////77

# EJEMPLO2

# Muestra el número de intentos y que los números no son correctos:

# WORD1="run1"
# WORD_TO_TEST1="runtest1"
# WORD2="run2"
# WORD_TO_TEST2="runtest2"

# CONTADOR=0
# INTENTOS=0

# while [ $CONTADOR -lt 6 ]; do
# WORD1="run$((RANDOM % 10 + 1))"
# WORD_TO_TEST1="runtest$((RANDOM % 10 + 1))"
# WORD2="run$((RANDOM % 10 + 1))"
# WORD_TO_TEST2="runtest$((RANDOM % 10 + 1))"

# if [ $CONTADOR -eq 0 ] || [ $WORD_TO_TEST1 == "runtest1" ] || [ $WORD1 == "run1" ] || [ $WORD2 == "run2" ] || [ $WORD_TO_TEST2 == "runtest2" ]; then
# echo "Running is fun!!"
# else
# echo "Intento $INTENTOS: El número $CONTADOR no es correcto"
# INTENTOS=$(($INTENTOS + 1))
# fi
# CONTADOR=$(($CONTADOR + 1))
# sleep 1s
# done


# //////////////////////////////////////////////////////////////////
# //////////////////////////////////////////////////////////////////

# El código actualizado para que intercambie el resultado de las variables antes de la siguiente iteración:

# WORD1="run1"
# WORD_TO_TEST1="runtest1"
# WORD2="run2"
# WORD_TO_TEST2="runtest2"

# CONTADOR=0
# INTENTOS=0

# while [ $CONTADOR -lt 6 ]; do
# if [ $CONTADOR -eq 0 ] || [ $WORD_TO_TEST1 == "runtest1" ] || [ $WORD1 == "run1" ] || [ $WORD2 == "run2" ] || [ $WORD_TO_TEST2 == "runtest2" ]; then
# echo "Running is fun!!"
# else
# echo "Intento $INTENTOS: El número $CONTADOR no es correcto"
# INTENTOS=$(($INTENTOS + 1))
# fi
# WORD1="run$((RANDOM % 10 + 1))"
# WORD_TO_TEST1="runtest$((RANDOM % 10 + 1))"
# WORD2="run$((RANDOM % 10 + 1))"
# WORD_TO_TEST2="runtest$((RANDOM % 10 + 1))"
# CONTADOR=$(($CONTADOR + 1))
# sleep 1s
# done

# //////////////////////////////////////////////////////////////////
# //////////////////////////////////////////////////////////////////

#  El código actualizado para que las variables en la condición if sean números:

# NUM1=$((RANDOM % 10 + 1))
# NUM2=$((RANDOM % 10 + 1))
# NUM3=$((RANDOM % 10 + 1))
# NUM4=$((RANDOM % 10 + 1))

# CONTADOR=0
# INTENTOS=0

# while [ $CONTADOR -lt 6 ]; do
# if [ $CONTADOR -eq 0 ] || [ $NUM1 -eq 1 ] || [ $NUM2 -eq 2 ] || [ $NUM3 -eq 3 ] || [ $NUM4 -eq 4 ]; then
# echo "Running is fun!!"
# else
# echo "Intento $INTENTOS: El número $CONTADOR no es correcto"
# INTENTOS=$(($INTENTOS + 1))
# fi
# NUM1=$((RANDOM % 10 + 1))
# NUM2=$((RANDOM % 10 + 1))
# NUM3=$((RANDOM % 10 + 1))
# NUM4=$((RANDOM % 10 + 1))
# CONTADOR=$(($CONTADOR + 1))
# sleep 1s
# done

# RESULTADO POR CONSOLA
# ./holacondicionales4-random.sh
# Running is fun!!
# Intento 0: El número 1 no es correcto
# Running is fun!!
# Intento 1: El número 3 no es correcto
# Intento 2: El número 4 no es correcto
# Intento 3: El número 5 no es correcto


# //////////////////////////////////////////////////////////////////
# //////////////////////////////////////////////////////////////////

# El código actualizado para que los números después de -eq también sean aleatorios:

CONTADOR=0
INTENTOS=0

while [ $CONTADOR -lt 6 ]; do
NUM1=$((RANDOM % 10 + 1))
NUM2=$((RANDOM % 10 + 1))
NUM3=$((RANDOM % 10 + 1))
NUM4=$((RANDOM % 10 + 1))
NUM_TO_TEST1=$((RANDOM % 10 + 1))
NUM_TO_TEST2=$((RANDOM % 10 + 1))
NUM_TO_TEST3=$((RANDOM % 10 + 1))
NUM_TO_TEST4=$((RANDOM % 10 + 1))

if [ $CONTADOR -eq 0 ] || [ $NUM1 -eq $NUM_TO_TEST1 ] || [ $NUM2 -eq $NUM_TO_TEST2 ] || [ $NUM3 -eq $NUM_TO_TEST3 ] || [ $NUM4 -eq $NUM_TO_TEST4 ]; then
echo "Running is fun!!"
else
echo "Intento $INTENTOS: El número $CONTADOR no es correcto"
INTENTOS=$(($INTENTOS + 1))
fi
CONTADOR=$(($CONTADOR + 1))
sleep 1s
done
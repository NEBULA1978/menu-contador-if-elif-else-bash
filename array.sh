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

# Comparaciones strings
# WORD="run"
# if [ $WORD == "run" ]; then
#     echo "Run is fun!!"
# else
#     echo "--------"

# fi
# Comparaciones strings2

# WORD_TO_TEST="runtest"
# if [ $WORD_TO_TEST == "runtest" ] -o [ $WORD == "run" ] ; then
# echo "Running is fun!!"
# else
# echo "--------"
# fi



# Ejemplo1
# while true; do
#     echo "Presiona Cotrl + C para salir"
#     sleep 3s
# done


# Sí, puedes crear un array que contenga los comandos que deseas ejecutar y luego usar un bucle para ir iterando sobre los elementos del array y ejecutar un comando diferente en cada iteración. Por ejemplo:

#!/bin/bash

comandos=(
  "ls"
  "ls -l"
  "ls -la"
  "ls * .."
)

num_comandos=${#comandos[@]}
i=0

while [ "$i" -lt "$num_comandos" ]; do
  eval "${comandos[$i]}"
  i=$((i + 1))
  sleep 1
done

# En este ejemplo, el array comandos contiene cuatro comandos que se ejecutarán en secuencia cada segundo. La variable num_comandos se utiliza para almacenar el número de elementos en el array y el contador i se usa para recorrer el array y ejecutar cada comando en su orden. La función eval se utiliza para evaluar la cadena de comandos en el elemento actual del array y la función sleep se utiliza para esperar un segundo antes de ejecutar el siguiente comando.
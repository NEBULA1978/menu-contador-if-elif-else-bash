#!/bin/bash

#  las listas y las operaciones asociadas a ellas no son una característica nativa de Bash. Sin embargo, puedes implementar algo similar a una lista en Bash utilizando arrays y realizar algunas operaciones similares mediante comandos de shell y scripts. Por ejemplo:

# Definición
my_list=(35 24 62 52 30 30 17)

# Acceso a elementos y búsqueda
echo ${my_list[0]}
echo ${my_list[-1]}

# Concatenación
new_list=( "${my_list[@]}" 24 30 )
echo "${new_list[@]}"

# Creación, inserción, actualización y eliminación
new_list+=(24)
echo "${new_list[@]}"

new_list[2]=100
echo "${new_list[@]}"

unset new_list[1]
echo "${new_list[@]}"


# No es posible ejecutar directamente código de Python en Bash, ya que son lenguajes de programación diferentes. Sin embargo, puedes escribir scripts en Bash que realicen funciones similares a las que muestras en tu código de Python. Por ejemplo:

#!/bin/bash

# Creación de una lista con valores
my_list=(35 24 62 52 30 30 17)

# Impresión de la lista y su longitud
echo ${my_list[@]}
echo ${#my_list[@]}

# Creación de otra lista con valores de diferentes tipos
my_other_list=(35 1.77 "Brais" "Moure")

# Acceso al primer elemento de la lista
echo ${my_other_list[0]}

# Acceso al segundo elemento de la lista
echo ${my_other_list[1]}

# Acceso al último elemento de la lista
echo ${my_other_list[-1]}

# Acceso al penúltimo elemento de la lista
echo ${my_other_list[-2]}

# Contar el número de veces que un elemento aparece en la lista
count=0
for i in "${my_list[@]}"; do
  if [[ $i == 30 ]]; then
    count=$((count + 1))
  fi
done
echo $count

# Búsqueda de un elemento en la lista
index=0
for i in "${my_other_list[@]}"; do
  if [[ $i == "Brais" ]]; then
    break
  fi
  index=$((index + 1))
done
echo $index

# Desempaquetado de la lista
age=${my_other_list[0]}
height=${my_other_list[1]}
name=${my_other_list[2]}
surname=${my_other_list[3]}
echo $name

# Cambio del orden de los elementos al desempaquetar la lista
name=${my_other_list[2]}
height=${my_other_list[1]}
age=${my_other_list[0]}
surname=${my_other_list[3]}
echo $age

# Lo siento, las listas en Bash son un concepto diferente a las listas en Python y no se pueden concatenar de la misma manera. En Bash, puedes utilizar los arrays para almacenar una lista de valores, pero la concatenación se realiza mediante la creación de un nuevo array que contenga los elementos de los arrays originales. Aquí te muestro un ejemplo:

array1=(35 24 62 52 30 30 17)
array2=(35 1.77 "Brais" "Moure")

array3=( "${array1[@]}" "${array2[@]}" )

echo "${array3[@]}"

#!/bin/bash

language="bash"

echo "${language^}"  # Primera letra en mayúsculas
echo "${language^^}"  # Todas las letras en mayúsculas
echo "${language,,}"  # Todas las letras en minúsculas
echo "${language}" | tr -d '\n' | grep -o "t" | wc -l  # Contar la cantidad de veces que aparece "t"
echo "${language}" | tr -d '\n' | grep -E "^[0-9]+$"  # Verificar si es un número
echo "${language}" | tr -d '\n' | grep "^Py" &>/dev/null && echo "True" || echo "False"  # Verificar si comienza con "Py"
[[ "Py" == "py" ]] && echo "True" || echo "False"  # Comparación sensible a mayúsculas y minúsculas


# RESAULTADO POR CONSOLA

# ./03_strings.sh
# Bash
# BASH
# bash
# 0
# False
# False

### Strings ###

my_string="Mi String"
my_other_string='Mi otro String'

echo "Longitud de '$my_string':" ${#my_string}
echo "Longitud de '$my_other_string':" ${#my_other_string}
echo "$my_string $my_other_string"

my_new_line_string="Este es un String
con salto de línea"
echo -e "$my_new_line_string"

my_tab_string=$'\tEste es un String con tabulación'
echo -e "$my_tab_string"

my_scape_string=$'\\tEste es un String \\n escapado'
echo "$my_scape_string"

# RESAULTADO POR CONSOLA
# ./03_strings.sh
# Bash
# BASH
# bash
# 0
# False
# False
# Longitud de 'Mi String': 9
# Longitud de 'Mi otro String': 14
# Mi String Mi otro String
# Este es un String
# con salto de línea
#         Este es un String con tabulación

# No es posible realizar el formateo de strings de la misma manera en bash. Sin embargo, se puede lograr con la siguiente sintaxis:

name="Brais"
surname="Moure"
age=35

echo "Mi nombre es $name $surname y mi edad es $age"


# No es posible realizar el desempaquetado de caracteres de la misma manera en bash, pero se puede lograr utilizando arrays y accediendo a los elementos individuales de la siguiente manera:

language="python"
array=($(echo $language | grep -o .))
echo ${array[0]}
echo ${array[4]}


# En bash no se puede realizar la división de un string de la misma forma que en Python, pero se pueden lograr resultados similares utilizando subcadenas y expresiones regulares. Aquí hay algunos ejemplos:

language="python"

# Divide en un rango específico
language_slice=$(echo $language | cut -c2-4)
echo $language_slice

# Divide desde una posición específica hasta el final
language_slice=$(echo $language | cut -c2-)
echo $language_slice

# Divide desde el final de la cadena
language_slice=${language: -2:1}
echo $language_slice

# Divide con un salto específico
language_slice=$(echo $language | sed -n 's/\(.\)\(.\)\(.\)\(.\)\(.\)\(.\)/\1\3\5/p')
echo $language_slice


# Reverse
languageR="python"
reversed_language=`echo $languageR | rev`
echo $reversed_language


# En bash, para realizar estas funciones con cadenas de texto se puede utilizar el comando echo junto con la expresión regular tr para convertir una cadena a mayúsculas o minúsculas, y el comando grep para contar la cantidad de apariciones de una cadena en otra y para comprobar si una cadena comienza por otra.

# Por ejemplo, para convertir una cadena a mayúsculas:
string="python"
echo $string | tr '[:lower:]' '[:upper:]'

# Para convertir una cadena a minúsculas:

string="PYTHON"
echo $string | tr '[:upper:]' '[:lower:]'


# Para contar la cantidad de apariciones de una cadena en otra:

string="python"
echo $string | grep -o "t" | wc -l

# Para comprobar si una cadena comienza por otra:

string="python"
prefix="py"
if [[ $string == $prefix* ]]; then
  echo "La cadena comienza por $prefix"
else
  echo "La cadena no comienza por $prefix"
fi



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

# echo "Introduce la hora a la que quieres que suene la alarma (hh:mm):"
# read alarm_time

# # Verificamos si la hora introducida es válida
# icurrent_time=$(date +%H:%M)
# time_diff=$((($(date -d "$alarm_time" +%s) - $(date -d "$current_time" +%s))))
# while [ "$current_time" != "$alarm_time" ]; do
# current_time=$(date +%H:%M)
# time_diff=$((($(date -d "$alarm_time" +%s) - $(date -d "$current_time" +%s))))
# echo "La hora actual es $current_time. Faltan $time_diff segundos para la alarma."
# sleep 1
# done
#   # Reproducimos un sonido de alarma
#   echo "¡Alarma!"
#   echo "La hora actual es $current_time"
#   echo 'Aquí puedes agregar el comando para reproducir un sonido específico en tu sistema'
#   echo 'Por ejemplo:'
#   echo 'afplay /ruta/a/tu/archivo/de/sonido.mp3'
# else
#   echo "Hora introducida no válida, por favor inténtalo de nuevo."
# fi

# RESULTADO POR CONSOLA
# ./holacondicionales4-random3.sh
# Introduce la hora a la que quieres que suene la alarma (hh:mm):
# 04:02
# La hora actual es 03:59. Faltan 180 segundos para la alarma.
# La hora actual es 03:59. Faltan 180 segundos para la alarma.
# La hora actual es 03:59. Faltan 180 segundos para la alarma.
# La hora actual es 03:59. Faltan 180 segundos para la alarma.
# La hora actual es 03:59. Faltan 180 segundos para la alarma.
# La hora actual es 03:59. Faltan 180 segundos para la alarma.
# La hora actual es 03:59. Faltan 180 segundos para la alarma.
# La hora actual es 03:59. Faltan 180 segundos para la alarma.
# La hora actual es 03:59. Faltan 180 segundos para la alarma.
# La hora actual es 03:59. Faltan 180 segundos para la alarma.
# La hora actual es 03:59. Faltan 180 segundos para la alarma.
# La hora actual es 03:59. Faltan 180 segundos para la alarma.
# La hora actual es 03:59. Faltan 180 segundos para la alarma.

# //////////////////////////////////////////////////////////////////
# //////////////////////////////////////////////////////////////////

#!/bin/bash

echo "Introduce la hora a la que quieres que suene la alarma (hh:mm):"
read alarm_time

if [[ $alarm_time =~ ^[0-9]{2}:[0-9]{2}$ ]]; then
  current_time=$(date +%s)
  alarm_time_seconds=$(date -d "$alarm_time" +%s)
  time_diff=$((alarm_time_seconds - current_time))
  
  while [ "$current_time" -lt "$alarm_time_seconds" ]; do
    current_time=$(date +%s)
    time_diff=$((alarm_time_seconds - current_time))
    echo "La hora actual es $(date +%H:%M:%S). Faltan $time_diff segundos para la alarma."
    sleep 1
  done
  
  # Reproducimos un sonido de alarma
  echo "¡Alarma!"
  echo "La hora actual es $(date +%H:%M:%S)"
  echo 'Aquí puedes agregar el comando para reproducir un sonido específico en tu sistema
Por ejemplo:
afplay /ruta/a/tu/archivo/de/sonido.mp3'

else
  echo "Hora introducida no válida, por favor inténtalo de nuevo."
fi

#!/bin/bash
# Puedes colocar los comandos dentro de los bloques if, elif y else para que se ejecuten dependiendo del tiempo restante hasta la alarma. Por ejemplo:

echo "Introduce la hora a la que quieres que suene la alarma (hh:mm):"
read alarm_time

current_time=$(date +%H:%M:%S)
time_diff=$(($(date -d "$alarm_time" +%s) - $(date -d "$current_time" +%s)))

while [ "$current_time" != "$alarm_time" ]; do
  current_time=$(date +%H:%M:%S)
  time_diff=$(($(date -d "$alarm_time" +%s) - $(date -d "$current_time" +%s)))

  if [ "$time_diff" -gt 300 ]; then
    # Ejecutamos un comando diferente si faltan más de 300 segundos (5 minutos) para la alarma
    echo "La hora actual es $current_time. Faltan $time_diff segundos para la alarma."
    # aquí puedes colocar el comando que quieres ejecutar si faltan más de 5 minutos para la alarma
  elif [ "$time_diff" -gt 120 ]; then
    # Ejecutamos un comando diferente si faltan más de 120 segundos (2 minutos) pero menos de 300 segundos (5 minutos) para la alarma
    echo "La hora actual es $current_time. Faltan $time_diff segundos para la alarma."
    # aquí puedes colocar el comando que quieres ejecutar si faltan más de 2 minutos pero menos de 5 minutos para la alarma
  else
    # Ejecutamos un comando diferente si faltan 120 segundos (2 minutos) o menos para la alarma
    echo "La hora actual es $current_time. Faltan $time_diff segundos para la alarma."
    # aquí puedes colocar el comando que quieres ejecutar si faltan 2 minutos o menos para la alarma
  fi

  sleep 1
done

# Reproducimos un sonido de alarma
echo "¡Alarma!"
echo "La hora actual es $current_time"
echo 'Aquí puedes agregar el comando para reproducir un sonido específico en tu sistema'
echo 'Por ejemplo:'
echo 'afplay /ruta/a/tu/archivo/de/sonido.mp3'

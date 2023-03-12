#!/bin/bash

declare -A tarifas
tarifas[automóvil]=10
tarifas[camión]=20
tarifas[autobús]=30

declare -A recaudación
recaudación[automóvil]=0
recaudación[camión]=0
recaudación[autobús]=0
recaudación[tarifa_total]=0

while true; do
  read -p "Introduce el tipo de vehículo (automóvil, camión, autobús o 0 para salir): " tipo_vehiculo

  if [ "$tipo_vehiculo" == "0" ]; then
    break
  fi

  if [ -z "${tarifas[$tipo_vehiculo]}" ]; then
    echo "Tipo de vehículo no válido"
    continue
  fi

  tarifa=${tarifas[$tipo_vehiculo]}

  recaudación[$tipo_vehiculo]=$((${recaudación[$tipo_vehiculo]} + 1))
  recaudación[tarifa_total]=$((${recaudación[tarifa_total]} + $tarifa))
done

echo "Recaudación total: ${recaudación[tarifa_total]} dólares"

for tipo_vehiculo in "${!tarifas[@]}"; do
  echo "Cantidad de $tipo_vehiculo: ${recaudación[$tipo_vehiculo]}"
  echo "Recaudación por $tipo_vehiculo: $(( ${recaudación[$tipo_vehiculo]} * ${tarifas[$tipo_vehiculo]} )) dólares"
done

# ERROR

# next@next-System:~/Música/menu-contador-if-elif-else-bash$ ./04_lists-ejer-peaje.sh
# ./04_lists-ejer-peaje.sh: línea 8: declare: `recaudación': no es un identificador válido
# ./04_lists-ejer-peaje.sh: línea 9: recaudación[automóvil]=0: orden no encontrada
# ./04_lists-ejer-peaje.sh: línea 10: recaudación[camión]=0: orden no encontrada
# ./04_lists-ejer-peaje.sh: línea 11: recaudación[autobús]=0: orden no encontrada
# ./04_lists-ejer-peaje.sh: línea 12: recaudación[tarifa_total]=0: orden no encontrada
# Introduce el tipo de vehículo (automóvil, camión, autobús o 0 para salir): camion
# Tipo de vehículo no válido
# Introduce el tipo de vehículo (automóvil, camión, autobús o 0 para salir): camión
# ./04_lists-ejer-peaje.sh: línea 28: ${recaudación[$tipo_vehiculo]} + 1: sustitución errónea
# ./04_lists-ejer-peaje.sh: línea 30: Recaudación total: ${recaudación[tarifa_total]} dólares: sustitución errónea
# ./04_lists-ejer-peaje.sh: línea 33: Cantidad de $tipo_vehiculo: ${recaudación[$tipo_vehiculo]}: sustitución errónea
# next@next-System:~/Música/menu-contador-if-elif-else-bash$ 
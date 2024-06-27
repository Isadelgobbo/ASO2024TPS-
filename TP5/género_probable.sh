#!/bin/bash

# Solicitar el nombre al usuario
read -p "Introduce un nombre: " nombre

# Realizar la solicitud a la API de Genderize.io para obtener el género estimado
respuesta=$(curl -s "https://api.genderize.io/?name=${nombre}")

# Verificar si la solicitud fue exitosa
if [ $? -ne 0 ]; then
    echo "Error al conectarse a la API"
    exit 1
fi

# Obtener el género y la probabilidad de la respuesta usando jq
genero=$(echo $respuesta | jq -r '.gender')
probabilidad=$(echo $respuesta | jq -r '.probability')

# Verificar si se obtuvo una respuesta válida
if [ "$genero" == "null" ]; then
    echo "No se pudo determinar el género para el nombre: $nombre"
else
    echo "El género probable para el nombre $nombre es $genero con una probabilidad de $probabilidad"
fi

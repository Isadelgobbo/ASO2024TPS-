#!/bin/bash

# Adivina el Número
# Este script genera un número aleatorio entre 1 y 100 y permite al usuario 
# intentar adivinarlo, proporcionando pistas si el intento es demasiado alto o bajo.

# Generar un número aleatorio entre 1 y 100
numero_secreto=$(( RANDOM % 100 + 1 ))

# Inicializar la variable de intento del usuario
intento=0

# Función para proporcionar pistas al usuario
proporcionar_pista() {
    if [ $1 -lt $numero_secreto ]; then
        echo "Demasiado bajo. Intenta otra vez."
    elif [ $1 -gt $numero_secreto ]; then
        echo "Demasiado alto. Intenta otra vez."
    fi
}

# Bucle principal para adivinar el número
while true; do
    # Leer el intento del usuario
    read -p "Adivina el número (entre 1 y 100): " intento

    # Verificar si el intento es un número válido
    if ! [[ "$intento" =~ ^[0-9]+$ ]]; then
        echo "Por favor, introduce un número válido."
        continue
    fi

    # Convertir el intento a un número entero
    intento=$(( intento ))

    # Proporcionar pistas o felicitar al usuario si adivina correctamente
    if [ $intento -eq $numero_secreto ]; then
        echo "¡Felicidades! Adivinaste el número correcto: $numero_secreto"
        break
    else
        proporcionar_pista $intento
    fi
done

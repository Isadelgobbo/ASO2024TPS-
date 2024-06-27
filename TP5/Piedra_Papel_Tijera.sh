#!/bin/bash

# Piedra, Papel o Tijeras: Un juego simple contra la computadora
# El script solicita la elección del usuario, genera una elección aleatoria para la computadora,
# y determina el ganador.

# Función para obtener la elección aleatoria de la computadora
get_computer_choice() {
    choices=("piedra" "papel" "tijeras")
    random_index=$((RANDOM % 3))
    echo "${choices[$random_index]}"
}

# Función para determinar el ganador
determine_winner() {
    user_choice=$1
    computer_choice=$2

    if [ "$user_choice" == "$computer_choice" ]; then
        echo "Empate! Ambos eligieron $user_choice."
    elif [ "$user_choice" == "piedra" ] && [ "$computer_choice" == "tijeras" ]; then
        echo "Ganaste! Piedra aplasta tijeras."
    elif [ "$user_choice" == "papel" ] && [ "$computer_choice" == "piedra" ]; then
        echo "Ganaste! Papel envuelve piedra."
    elif [ "$user_choice" == "tijeras" ] && [ "$computer_choice" == "papel" ]; then
        echo "Ganaste! Tijeras cortan papel."
    else
        echo "Perdiste! $computer_choice gana contra $user_choice."
    fi
}

# Solicitar la elección del usuario
echo "Elige una opción: piedra, papel o tijeras"
read user_choice

# Validar la elección del usuario
if [[ "$user_choice" != "piedra" && "$user_choice" != "papel" && "$user_choice" != "tijeras" ]]; then
    echo "Opción no válida. Por favor elige piedra, papel o tijeras."
    exit 1
fi

# Obtener la elección de la computadora
computer_choice=$(get_computer_choice)

# Mostrar la elección de la computadora
echo "La computadora eligió: $computer_choice"

# Determinar el ganador
determine_winner "$user_choice" "$computer_choice"

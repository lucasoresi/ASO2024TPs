#!/bin/bash

# Genera un número aleatorio entre 1 y 100
numero_aleatorio=$(( (RANDOM % 100) + 1 ))

echo "He generado un número aleatorio entre 1 y 100."
echo "¡Intenta adivinarlo!"

while true; do
    # Solicita un número al usuario
    read -p "Introduce tu número: " numero_usuario

    # Verifica si el número introducido es correcto, demasiado alto o demasiado bajo
    if [ "$numero_usuario" -lt "$numero_aleatorio" ]; then
        echo "Demasiado bajo. Inténtalo de nuevo."
    elif [ "$numero_usuario" -gt "$numero_aleatorio" ]; then
        echo "Demasiado alto. Inténtalo de nuevo."
    else
        echo "¡Felicidades! Has adivinado el número correcto: $numero_aleatorio"
        break
    fi
done
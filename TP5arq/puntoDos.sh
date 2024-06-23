#!/bin/bash

# Solicita al usuario que ingrese un nombre
read -p "Ingrese un nombre para conocer su género: " nombre

# URL de la API de Agify para obtener el género basado en el nombre
url="https://api.agify.io/?name=$nombre"

# Realiza la solicitud GET a la API y guarda la respuesta en una variable
response=$(curl -s "$url")

# Extrae el género de la respuesta JSON
genero=$(echo "$response" | jq -r '.gender')

# Verifica si se obtuvo un género válido
if [ "$genero" == "null" ]; then
    echo "No se pudo determinar el género para el nombre '$nombre'."
else
    echo "El género asociado al nombre '$nombre' es: $genero"
fi
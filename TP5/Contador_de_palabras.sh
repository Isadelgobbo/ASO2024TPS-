#!/bin/bash

# Contador de Palabras: Este script lee un archivo de texto y cuenta el
# número de palabras, líneas y caracteres en el archivo.

# Verifica si se ha proporcionado un archivo como argumento
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 <archivo>"
    exit 1
fi

# Asigna el primer argumento a la variable FILE
FILE=$1

# Verifica si el archivo existe
if [ ! -f "$FILE" ]; then
    echo "El archivo '$FILE' no existe."
    exit 1
fi

# Cuenta el número de palabras, líneas y caracteres usando el comando 'wc'
# 'wc' es un comando de Unix que significa "word count" (conteo de palabras)
word_count=$(wc -w < "$FILE")
line_count=$(wc -l < "$FILE")
char_count=$(wc -m < "$FILE")

# Imprime los resultados
echo "Archivo: $FILE"
echo "Número de palabras: $word_count"
echo "Número de líneas: $line_count"
echo "Número de caracteres: $char_count"
Verificación de argumentos: El script primero verifica si se ha proporcionado exactamente un argumento (el nombre del archivo).
Asignación de variables: Asigna el nombre del archivo proporcionado a la variable .FILE
Verificación de existencia del archivo: Comprueba si el archivo existe.
Uso del comando wc: Utiliza el comando para contar palabras (), líneas () y caracteres ().wc-w-l-m
Impresión de resultados: Muestra los resultados en la terminal.

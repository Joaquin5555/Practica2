#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "Uso correcto: $0 <nombre_del_archivo> <protocolo>"
    exit 1
fi

archivo="$1"
protocolo="$2"

if [[ ! -f "$archivo" ]]; then
    echo "Este archivo '$archivo' no existe."
    exit 1
fi

if [[ "$archivo" != *.txt && "$archivo" != *.csv ]]; then
    echo "Este archivo debe tener extensión .txt o .csv."
    exit 1
fi

num_ocurrencias=$(grep -i "$protocolo" "$archivo" | wc -l)

if [[ "$num_ocurrencias" -gt 0 ]]; then
    echo "El protocolo '$protocolo' aparece en $num_ocurrencias líneas del archivo '$archivo'."
else
    echo "No se encontraron coincidencias para el protocolo '$protocolo' en el archivo '$archivo'."
fi

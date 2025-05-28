#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Uso correcto: $0 <ruta_del_archivo_o_directorio>"
    exit 1
fi

ruta="$1"

if [[ -d "$ruta" ]]; then
    echo "Es un directorio."
elif [[ -f "$ruta" ]]; then
    extension="${ruta##*.}"
    "Sin extensión"
    if [[ "$extension" == "$ruta" ]]; then
        echo "Este archuivo es un archivo sin extensión."
    else
        echo "Este es un archivo con extensión: .$extension"
    fi
else
    echo "Error: La ruta no existe."
    exit 1
fi

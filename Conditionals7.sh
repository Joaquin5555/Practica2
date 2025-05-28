#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Uso correcto: $0 <ruta_del_archivo>"
    exit 1
fi

archivo="$1"

if [[ ! -e "$archivo" ]]; then
    echo "Este archivo no existe."
    exit 1
fi

es_legible=$( [[ -r "$archivo" ]] && echo "Sí" || echo "No" )
es_escribible=$( [[ -w "$archivo" ]] && echo "Sí" || echo "No" )
es_ejecutable=$( [[ -x "$archivo" ]] && echo "Sí" || echo "No" )

echo "Permisos del archivo:"
echo "Lectura: $es_legible"
echo "Escritura: $es_escribible"
echo "Ejecución: $es_ejecutable"

#!/bin/bash

# Verificar que se ha pasado exactamente 1 parámetro
if [[ $# -ne 1 ]]; then
    echo "Uso correcto: $0 <ruta_del_archivo>"
    exit 1
fi

archivo="$1"

if [[ ! -e "$archivo" ]]; then
    echo "Este archivo no existe."
    exit 1
fi

tipo_archivo=$(file --mime-type "$archivo" | awk '{print $2}')

if [[ "$tipo_archivo" =~ ^text/ ]]; then
    tipo="Texto"
elif [[ "$tipo_archivo" =~ ^application/ ]]; then
    tipo="Binario"
else
    tipo="Desconocido"
fi

es_legible=$( [[ -r "$archivo" ]] && echo "Sí" || echo "No" )
es_escribible=$( [[ -w "$archivo" ]] && echo "Sí" || echo "No" )
es_ejecutable=$( [[ -x "$archivo" ]] && echo "Sí" || echo "No" )

echo "Este archivo existe y se ha encontrado."
echo "Tipo de formato de este archivo es: $tipo"
echo "Legible: $es_legible"
echo "Escribible: $es_escribible"
echo "Ejecutable: $es_ejecutable"

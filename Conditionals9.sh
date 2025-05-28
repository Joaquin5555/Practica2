#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "Uso correcto: $0 <ruta_del_directorio> <nombre_del_tarball>"
    exit 1
fi

directorio="$1"
tarball="$2"

if [[ ! -d "$directorio" ]]; then
    echo "La ruta no es un directorio válido."
    exit 1
fi

if [[ "$tarball" != *.tar.gz ]]; then
    tarball="$tarball.tar.gz"
fi

if [[ -f "$tarball" ]]; then
    read -p "El archivo '$tarball' ya existe. ¿Desea sobrescribirlo? (s/n): " respuesta
    if [[ "$respuesta" != "s" ]]; then
        echo "Operación cancelada. No se ha creado el tarball."
        exit 1
    fi
fi

tar -czf "$tarball" "$directorio"

echo "El directorio '$directorio' ha sido comprimido exitosamente en '$tarball'."

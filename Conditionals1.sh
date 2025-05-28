#!/bin/bash

echo "Introduce un número entero:"
read numero

if [[ "$numero" -gt 0 ]]; then
    echo "Este número es positivo."
elif [[ "$numero" -lt 0 ]]; then
    echo "Este número es negativo."
else
    echo "El número es cero."
fi

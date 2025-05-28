#!/bin/bash

echo "Introduce un número entero:"
read numero

if [[ "$numero" -lt 0 ]]; then
    echo "Este numero es negativo."
else
    echo "Este numero no es negativo."
fi

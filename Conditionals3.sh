#!/bin/bash

echo "Introduce un numero entero:"
read numero

if [[ "$numero" -eq 0 ]]; then
    echo "Este numero es cero."
else
    echo "Este numero no es cero."
fi

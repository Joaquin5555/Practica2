#!/bin/bash

if [[ $# -ne 3 ]]; then
    echo "tienes que ingresar 3 parámetros."
    echo "Uso correcto: $0 <operación> <número1> <número2>"
    exit 1
fi

operacion="$1"
num1="$2"
num2="$3"

es_entero() {
    [[ "$1" =~ ^-?[0-9]+$ ]]
}

if ! es_entero "$num1" || ! es_entero "$num2"; then
    echo "Los numeros deben ser numeros enteros."
    exit 1
fi

num1=$((num1))
num2=$((num2))

case "$operacion" in
    sumar)
        resultado=$((num1 + num2))
        ;;
    restar)
        resultado=$((num1 - num2))
        ;;
    multiplicar)
        resultado=$((num1 * num2))
        ;;
    dividir)
        if [[ "$num2" -eq 0 ]]; then
            echo "No se puede dividir por cero."
            exit 1
        fi
        resultado=$((num1 / num2))
        ;;
    *)
        echo "No es valido, debes de usar una de las siguientes: 'sumar', 'restar', 'multiplicar' o 'dividir'."
        exit 1
        ;;
esac

echo "Resultado de $operacion entre $num1 y $num2: $resultado"

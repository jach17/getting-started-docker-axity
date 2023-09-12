#!/bin/bash

# Nombre del archivo de salida
archivo="/mimappdir/logs.txt"

# Limpiamos el archivo en caso de que ya exista
> "$archivo"

# Imprimimos el mensaje durante 10 minutos
for i in $(seq 1 600); do

    # Escribimos la línea de texto en el archivo
    echo "Línea de texto número $i" >> "$archivo"
    
    # Esperamos 1 segundo
    sleep 1
done
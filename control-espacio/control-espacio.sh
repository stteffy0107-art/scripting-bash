#!/bin/bash

### Filtramos el resultado del FS para que devuelva el valor numerico del % de ocupacion##
FS=$1
USO=$(df -h "$FS" | awk 'NR==2 {print $5}' | sed 's/%//')

### A partir de ese valor, primero evalua el nombre indicado por si no existiera y posteriormente le ponemos un umbral del 80% como alerta. En caso de que supere el umbral, 
if [ -z "$USO" ]; then
    echo "No se pudo obtener el uso del filesystem $FS"
    exit 1
fi

if [ $USO -gt 80 ]; then
    echo "Atención: $FS al $USO% de uso." >> /var/log/alerta-espacio.log
    return 255
else
    echo "$FS en buen estado ($USO% usado)." >/dev/null
    return 0
fi

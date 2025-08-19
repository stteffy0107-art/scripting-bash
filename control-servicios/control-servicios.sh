#!/bin/bash

###Servicio para control sobre procesos###

ACCION=$1
SERVICIO=$2

systemctl $ACCION $SERVICIO &> /dev/null
RESULTADO=$?

### Evaluacion de resultado y registro en log para control en caso de planificacion

if [ $RESULTADO -eq 0 ]; then
  echo "Operacion $ACCION para el servicio $SERVICIO ejecutada correctamente" >> /var/log/servicios.log
else
  echo "Error en operacion $ACCION para el servicio $SERVICIO (codigo $RESULTADO)" >> /var/log/servicios.log
fi

Con este script se puede hacer un control individual de los FS que nos interese vigilar la ocupacion de espacio.
Hay dos versiones del script pero las dos tienen en comun que para una administracion completa, si se planifica diariamente por ejemplo o cada ciertas horas, podemos estar prevenidos y responder rapido antes de que se llenen por completo.
1. Si el FS llega al 80% inserta linea de alerta sobre log (control-espacio.sh)
2. Si el FS llega al 80% nos envia alerta por correo (control-espacio-mail.sh)

Para la opcion 2, seguir el fichero de instalacion y configuracion MSMTP.txt

Pongamos de ejemplo que tenemos la instalacion de apache en /etc/apache y que es donde nos genera los logs. Este FS es suceptible de llenarse y que el servidor deje de funcionar y es un buen ejemplo para tener monitorizado.

Para planificar el script y que controle este FS podemos por ejemplo indicarle que cada hora se ejecute.

1. Ejecutamos crontab -e
2.  Incluimos la linea:
"0 * * * * /ruta/al/script/control-espacio.sh /etc/apache"
3. Salvamos los cambios
   


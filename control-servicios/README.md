Este script a partir de los argumentos servicio y accion es capaz de comprobar el estado de un proceso, de reiniciarlo, de parar o arrancar y de deshabilitarlo.

Siguiendo con la planificacion de los scripts, puede resultar de utilidad hacer un reinicio programado del servicio apache2 una vez al mes en un horario valle.

En ese caso planificariamos de la siguiente manera:

1. Ejecutamos crontab -e
2.  Incluimos la linea:
0 2 1-7 * 0 [ "$(date +\%d)" -le 7 ] && /ruta/a/tu_script/control-servicios.sh restart apache2
3. Salvamos cambios

De esta manera indicamos que el primer domingo de cada mes a las 2 de la mañana reinicie el servicio

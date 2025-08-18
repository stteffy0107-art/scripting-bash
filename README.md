# scripting-bash
### Automatizacion de tareas de administración en sistemas Linux mediante la creación de scripts sobre servidor Web con apache.

Aplicando al ejemplo que nos compete, se han creado distintos scripts para automatizar la administración y que se pueden adaptar a otros servidores de manera generica unicamente creando el script tal cual se indican.
Estos scripts se pueden combinar con el uso de cron para planificarlos semanalmente, diariamente o mensualmente y ejecutar sin control humano tareas de mantenimiento para nuestro servidor.

Instrucciones de planificación:

###Abrir el editor de cron:
crontab -e

### Indicar que queremos ejecutar y con que periodicidad:

minuto  hora  día_mes  mes  día_semana  comando

##Ejemplo de linea que invoca el script para ejecutarse todos los dias a las 14:30
30 14 * * * /ruta/a/mi_script.sh



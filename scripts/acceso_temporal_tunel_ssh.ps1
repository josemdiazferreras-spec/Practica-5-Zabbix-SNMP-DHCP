# Tunel temporal que se utilizo desde PowerShell en Windows.
# Se ejecuta en la PC Windows (no en la consola de Zabbix).
# Requiere que GNS3 VM este activa y que R1 mantenga la redireccion TCP 8080.
# Se mantiene activa la ventana mientras se utiliza Zabbix.
ssh -N -L 8088:192.168.42.68:8080 gns3@192.168.200.169
# Abrir en el navegador de Windows: http://127.0.0.1:8088/
# No es necesario para el monitoreo de R1 y SW desde Zabbix.

# Guía de reproducción y archivos de configuración

Esta guía resume **los comandos documentados**. Para repetirlos en otra topología se necesitan las imágenes compatibles de Cisco/GNS3/Zabbix y adaptar los detalles de red. Los running-configs contienen valores de comunidad sustituidos por marcadores, de modo que **no deben ejecutarse literalmente sin revisión**.

## Requisitos del entorno

- GNS3 con router Cisco 7200, switch IOSvL2, Zabbix Appliance 7.0.32 y un nodo NAT1.
- Conexiones: NAT1 ↔ R1/Gi1/0 ↔ R1/Fa0/0 ↔ SW/Gi0/0; SW/Gi0/1 ↔ Zabbix/eth0.
- Red LAN `10.6.93.0/24`, SW `10.6.93.2/24`, gateway R1 `10.6.93.1`.

## Configuración persistente

- [Running-config publicable de R1](../configs/R1_running-config.txt)
- [Running-config publicable de SW](../configs/SW_running-config.txt)
- [ifcfg-eth0 del appliance](../configs/ifcfg-eth0_zabbix.conf)

Los archivos Cisco reflejan lo compartido por el estudiante, salvo la redacción de la comunidad SNMP; en SW también se omitieron banners de licencia de la imagen. El estudiante confirmó que guardó ambas configuraciones con `copy running-config startup-config`.

## Scripts y comandos

- [Comandos de configuración Cisco](../scripts/comandos_configuracion_red.ios).
- [Comandos de verificación Cisco](../scripts/comandos_verificacion_cisco.txt).
- [Diagnóstico en Zabbix/Linux](../scripts/comandos_diagnostico_zabbix.sh).
- [Regla de NAT temporal](../scripts/configuracion_nat_temporal_R1.txt).
- [Túnel SSH usado en Windows](../scripts/acceso_temporal_tunel_ssh.ps1).

## Verificación funcional

1. En R1, ejecutar `show ip interface brief`, `show ip dhcp pool`, `show ip dhcp binding` y `show ip nat statistics`.
2. En SW, ejecutar `show ip interface brief`, `show running-config interface Vlan1` y `show access-lists 10`.
3. En Zabbix Linux, comprobar `ip -4 addr show eth0`, el archivo `ifcfg-eth0` y la conectividad ICMP hacia `.1` y `.2`.
4. En Zabbix web, abrir **Data collection → Hosts** y observar R1/SW con SNMP en verde.
5. En **Monitoring → Latest data**, seleccionar R1 y después SW y comprobar valores de SNMP (CPU, memoria, modelos e interfaces).

## Nota sobre el túnel

El túnel SSH es solo para alcanzar la interfaz web desde Windows cuando la LAN de GNS3 está aislada; las consultas SNMP entre Zabbix, R1 y SW se realizan dentro de la topología y no pasan por ese túnel.

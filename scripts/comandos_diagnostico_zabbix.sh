#!/usr/bin/env bash
# Registro de comandos de verificacion que se utilizaron durante la practica.
# Para repetirlos manualmente en la consola del appliance. No altera la red.
set -e
ip -4 addr show eth0
ip -4 route get 10.6.93.1
cat /etc/sysconfig/network-scripts/ifcfg-eth0
ping -c 4 10.6.93.1
ping -c 4 10.6.93.2
ping -c 4 1.1.1.1
systemctl status zabbix-server --no-pager
curl -I http://127.0.0.1/

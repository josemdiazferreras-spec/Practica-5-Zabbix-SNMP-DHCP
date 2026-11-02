# Informe técnico y evidencias del laboratorio

> **Versión principal:** los documentos PDF y Word de esta carpeta son los archivos editados por el estudiante. Este índice permite navegar por las evidencias directamente desde GitHub.

## Documentos finales

- 📄 **[Documento técnico final (PDF)](Documento_Tecnico_Zabbix_Jose_Miguel_Diaz.pdf)** — para lectura y entrega.
- 📝 **[Documento técnico final (Word)](Documento_Tecnico_Zabbix_Jose_Miguel_Diaz.docx)** — versión editable.
- [Volver al README principal](../README.md).

## Arquitectura y diagramas

![Topología lógica con direcciones de red](../images/diagramas/topologia_logica.png)

![Topología real de GNS3](../images/evidencias/01_topologia_real.png)

![Flujo de DHCP y SNMP](../images/diagramas/flujo_dhcp_snmp.png)

## Evidencias DHCP

![Pool DHCP configurado en R1](../images/evidencias/02_pool_dhcp_r1.png)

![Asignación DHCP activa](../images/evidencias/03_concesion_dhcp_r1.png)

![Zabbix configurado como cliente DHCP](../images/evidencias/04_cliente_dhcp_zabbix.png)

## Conectividad y NAT

![Pruebas de conectividad desde Zabbix](../images/evidencias/05_conectividad_lan_zabbix.png)

![Acceso a Internet desde Zabbix](../images/evidencias/06_salida_internet_zabbix.png)

![NAT en R1](../images/evidencias/07_nat_r1.png)

## Monitoreo SNMP de R1 y SW

![Zabbix supervisa R1 por SNMP](../images/evidencias/12_snmp_r1_verde.png)

![Métricas de R1](../images/evidencias/13_metricas_snmp_r1.png)

![Router y switch disponibles por SNMP](../images/evidencias/14_ambos_hosts_snmp_verde.png)

![Métricas del switch](../images/evidencias/15_metricas_snmp_sw.png)

## Acceso administrativo temporal

![Diagrama del túnel SSH y NAT](../images/diagramas/acceso_web_temporal.png)

![Acceso web al appliance de Zabbix](../images/evidencias/09_acceso_web_tunel.png)

---

**Nota de seguridad:** Las configuraciones Cisco publicadas en `configs/` sustituyen la cadena real de la comunidad SNMP por un marcador. El PDF y el DOCX se incorporan tal como los entregó el estudiante.

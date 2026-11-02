# Matriz de requisitos y evidencias

| Requisito solicitado | Implementación observada | Evidencia visual / técnica | Resultado |
|---|---|---|---|
| Direccionamiento IP de router y switch | R1 `10.6.93.1/24`, SW `10.6.93.2/24` | [Diagrama lógico](../images/diagramas/topologia_logica.png), [R1 config](../configs/R1_running-config.txt), [SW config](../configs/SW_running-config.txt) | Verificado |
| DHCP LAN | Pool `LAN_20250693`, concesión `.100` | [Pool](../images/evidencias/02_pool_dhcp_r1.png), [Binding](../images/evidencias/03_concesion_dhcp_r1.png) | Verificado |
| Comunidad SNMP RO | `RO` con ACL 10 en R1 y SW | [R1 config](../configs/R1_running-config.txt), [SW config](../configs/SW_running-config.txt) | Verificado |
| Cliente DHCP Zabbix | `BOOTPROTO=dhcp` y dos IP dinámicas observadas | [Captura](../images/evidencias/04_cliente_dhcp_zabbix.png), [ifcfg](../configs/ifcfg-eth0_zabbix.conf) | Verificado |
| Consultas SNMP de R1 | CPU, memoria y modelo Cisco visibles | [SNMP R1](../images/evidencias/12_snmp_r1_verde.png), [datos](../images/evidencias/13_metricas_snmp_r1.png) | Verificado |
| Consultas SNMP de SW | Métricas de Gi0/0 y otras interfaces | [Hosts activos](../images/evidencias/14_ambos_hosts_snmp_verde.png), [datos](../images/evidencias/15_metricas_snmp_sw.png) | Verificado |
| Video demostrativo arriba | URL YouTube en primera sección | [Video](https://youtu.be/7xHnanq7HHQ) | Enlace colocado (contenido/duración por validar externamente) |
| Documentación profesional | README + documento técnico y matrices | [Informe técnico final PDF](Documento_Tecnico_Zabbix_Jose_Miguel_Diaz.pdf) / [Word editable](Documento_Tecnico_Zabbix_Jose_Miguel_Diaz.docx) | Incluido |
| Imágenes y diagramas | Capturas y PNG independientes | [Carpeta images](../images/) | Incluidos |
| Scripts utilizados | PowerShell, Cisco, Linux | [Carpeta scripts](../scripts/) | Incluidos |
| Running-configs | Exportaciones publicables R1/SW | [Carpeta configs](../configs/) | Incluidos, con comunidad redactada |

**Convención:** verificado = evidencia concreta observada en las capturas o configuraciones compartidas; no implica que se hayan comprobado todos los aspectos posibles de producción.

# Cómo corregir el repositorio **Practica-5-Zabbix**

**Problema actual:** se cargaron 38 archivos como elementos sueltos en la raíz del repositorio. Los enlaces `images/evidencias/...` del README no funcionan porque GitHub no tiene esas carpetas.

**Solución recomendada: GitHub Desktop (conserva el historial).**

1. Descarga y abre **GitHub Desktop**, e inicia sesión con tu cuenta de GitHub.
2. Ve a **File → Clone repository** y elige `josemdiazferreras-spec/Practica-5-Zabbix`.
3. Selecciona **Repository → Show in Explorer** para abrir la copia de Windows.
4. Dentro de esa copia, elimina **únicamente los archivos sueltos de la versión incorrecta**. No elimines la carpeta oculta `.git`, si aparece. No borres el proyecto de GitHub.
5. Extrae el archivo ZIP corregido. **Entra en la carpeta extraída**, donde deben verse exactamente estas cinco entradas: `configs`, `docs`, `images`, `scripts`, `README.md`.
6. Copia esas cuatro carpetas completas y `README.md` al directorio clonado. Si Windows pregunta si deseas reemplazar el README, acepta.
7. Vuelve a GitHub Desktop, comprueba que están identificados los archivos añadidos y eliminados, escribe el mensaje `Organizar Práctica 5 y corregir imágenes` y pulsa **Commit to main**.
8. Pulsa **Push origin**. Abre el repositorio en GitHub y confirma que aparecen cuatro carpetas y un README en la raíz.
9. Desplázate hacia abajo: comprueba que se renderizan la topología, DHCP y ambas métricas SNMP. Abre los enlaces del PDF y DOCX.

> Si tienes otros archivos propios que no pertenecen a la entrega anterior, consérvalos antes del paso 4. El procedimiento está pensado para reemplazar la carga desordenada que muestras en tus capturas.

## Estructura correcta

```text
Practica-5-Zabbix/
├── README.md
├── configs/
│   ├── R1_running-config.txt
│   ├── SW_running-config.txt
│   └── ifcfg-eth0_zabbix.conf
├── docs/
│   ├── Documento_Tecnico_Zabbix_Jose_Miguel_Diaz.pdf
│   ├── Documento_Tecnico_Zabbix_Jose_Miguel_Diaz.docx
│   ├── DOCUMENTO_TECNICO.md
│   └── ...
├── images/
│   ├── diagramas/
│   └── evidencias/
└── scripts/
    ├── comandos_configuracion_red.ios
    └── ...
```

## Por qué no debes volver a seleccionar todos los archivos sueltos

Cuando se cargan los PNG individualmente, GitHub los coloca en la raíz y el README busca otras rutas. Debes **mantener los directorios**, idealmente copiándolos en un clon local y usando **Commit + Push**.

Si prefieres el navegador, arrastra **cada carpeta completa** desde el Explorador de Windows hasta **Add file → Upload files**. Antes de confirmar, comprueba que los elementos aparecen con las rutas `images/...`, `docs/...`, `configs/...`, `scripts/...`. Aun así, los archivos antiguos de la raíz seguirán allí hasta que los elimines: para una limpieza completa, GitHub Desktop es más sencillo.

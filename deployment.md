# Despliegue - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* **Despliegue**

## Despliegue

Esta página contiene las consideraciones de despliegue para la implementación de la guía de inmunizaciones del MINSA en el contexto del sistema de salud peruano.

### Consideraciones de infraestructura

#### Conectividad

El Perú presenta una gran diversidad en la conectividad de sus establecimientos de salud:

* **Zona urbana**: Los establecimientos en áreas urbanas generalmente cuentan con conectividad estable a internet, lo que permite la operación en línea del REI.
* **Zona rural y de frontera**: Muchos puestos y centros de salud en zonas rurales, especialmente en la sierra y selva, tienen conectividad limitada o intermitente. El sistema debe soportar operación offline con sincronización periódica.
* **Zonas sin conectividad**: Algunos establecimientos de salud en zonas de difícil acceso no tienen conectividad. Para estos casos, se requieren mecanismos de registro manual con digitación posterior o sincronización mediante dispositivos portátiles.

#### Dispositivos

Los establecimientos de salud del primer nivel de atención del MINSA cuentan con equipamiento tecnológico variable:

* Hospitales y centros de salud de categoría I-3 o superior generalmente disponen de computadoras de escritorio
* Puestos de salud de categorías I-1 y I-2 pueden contar únicamente con tablets o smartphones
* El sistema debe ser compatible con navegadores web estándar en múltiples dispositivos

### Arquitectura de despliegue

Se recomienda una arquitectura de despliegue que incluya:

1. **Servidor central FHIR**: Servidor HAPI FHIR o equivalente a nivel nacional/regional que almacena los registros de vacunación, ejecuta la lógica CQL y genera los MeasureReports.
1. **Aplicación cliente**: Aplicación web progresiva (PWA) o aplicación nativa que permite la captura de datos con capacidad offline.
1. **Motor CQL**: Integrado en el servidor FHIR para la ejecución de la lógica de decisión y el cálculo de indicadores.
1. **Servicio de terminología**: Para la gestión centralizada de los catálogos de vacunas y códigos.
1. **Capa de interoperabilidad**: Para la integración con RENIEC, RENAES, HIS-MINSA y SIS.

### Capacitación

La implementación requiere capacitación del personal de salud en:

* Uso del sistema de registro electrónico de inmunizaciones
* Interpretación de las alertas y recomendaciones generadas por la lógica de decisión
* Generación y análisis de reportes de cobertura
* Procedimientos de resolución de problemas técnicos básicos

### Consideraciones de escalabilidad

El despliegue debe planificarse por fases:

1. **Fase piloto**: Implementación en un grupo seleccionado de establecimientos de salud de una DIRESA.
1. **Fase de expansión regional**: Despliegue progresivo a las demás DIRESA/GERESA.
1. **Fase nacional**: Operación a escala nacional con integración completa con los sistemas del MINSA.


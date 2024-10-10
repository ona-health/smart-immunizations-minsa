# Requisitos Funcionales - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Requisitos de Negocio**](business-requirements.md)
* **Requisitos Funcionales**

## Requisitos Funcionales

Los requisitos funcionales describen las capacidades que el sistema debe tener para satisfacer las necesidades de los usuarios finales y lograr las tareas dentro de los procesos de negocio.

Estos requisitos se basan en el Componente 8 del [Kit de Adaptación Digital de la OMS para Inmunizaciones](https://iris.who.int/handle/10665/380303), adaptados al contexto operativo del MINSA y la ESNI del Perú.

Estas listas no son exhaustivas y deben ser modificadas según el contexto y las necesidades de los usuarios.

### Requisitos funcionales por proceso

#### Registro del paciente (IMMZ.C)

| | | |
| :--- | :--- | :--- |
| IMMZ.FXNREQ.C.001 | El sistema debe permitir buscar pacientes por DNI, CUI, nombre o fecha de nacimiento | Alta |
| IMMZ.FXNREQ.C.002 | El sistema debe integrarse con RENIEC para la validación del DNI/CUI y la obtención de datos demográficos | Alta |
| IMMZ.FXNREQ.C.003 | El sistema debe permitir el registro de recién nacidos utilizando el CUI o datos de la madre como identificador temporal | Alta |
| IMMZ.FXNREQ.C.004 | El sistema debe registrar el ubigeo (departamento, provincia, distrito) del domicilio del paciente | Alta |
| IMMZ.FXNREQ.C.005 | El sistema debe registrar el tipo de seguro de salud (SIS, EsSalud, otro) | Media |
| IMMZ.FXNREQ.C.006 | El sistema debe registrar el establecimiento de salud asignado al paciente | Alta |

#### Administración de vacuna (IMMZ.D)

| | | |
| :--- | :--- | :--- |
| IMMZ.FXNREQ.D.001 | El sistema debe determinar automáticamente las vacunas que corresponden según la edad del paciente y su historial de vacunación | Alta |
| IMMZ.FXNREQ.D.002 | El sistema debe verificar automáticamente las contraindicaciones registradas antes de recomendar una vacuna | Alta |
| IMMZ.FXNREQ.D.003 | El sistema debe verificar que se cumplan los intervalos mínimos entre dosis | Alta |
| IMMZ.FXNREQ.D.004 | El sistema debe permitir registrar el lote, fecha de vencimiento y fabricante de la vacuna administrada | Alta |
| IMMZ.FXNREQ.D.005 | El sistema debe generar alertas cuando se detecten oportunidades perdidas de vacunación | Media |
| IMMZ.FXNREQ.D.006 | El sistema debe permitir el registro de vacunas administradas fuera del establecimiento (barridos, campañas, brigadas) | Alta |
| IMMZ.FXNREQ.D.007 | El sistema debe calcular la próxima cita de vacunación y registrarla automáticamente | Alta |
| IMMZ.FXNREQ.D.008 | El sistema debe permitir la impresión del carné de vacunación actualizado | Media |

#### Seguimiento e inasistentes (IMMZ.E y IMMZ.F)

| | | |
| :--- | :--- | :--- |
| IMMZ.FXNREQ.E.001 | El sistema debe generar listas de pacientes con vacunaciones pendientes o atrasadas | Alta |
| IMMZ.FXNREQ.E.002 | El sistema debe permitir el envío de recordatorios por SMS o mensaje (cuando sea factible) | Baja |
| IMMZ.FXNREQ.F.001 | El sistema debe generar listas de inasistentes por comunidad o sector para el seguimiento por ACS | Alta |
| IMMZ.FXNREQ.F.002 | El sistema debe registrar el resultado del seguimiento (vacunado, rechaza vacunación, no ubicado, cambio de domicilio) | Media |

#### Reportes (IMMZ.I)

| | | |
| :--- | :--- | :--- |
| IMMZ.FXNREQ.I.001 | El sistema debe generar reportes de cobertura vacunal por antígeno, dosis, grupo etario y ámbito geográfico | Alta |
| IMMZ.FXNREQ.I.002 | El sistema debe generar reportes de deserción vacunal | Alta |
| IMMZ.FXNREQ.I.003 | El sistema debe permitir la exportación de datos en formatos compatibles con el HIS-MINSA | Alta |
| IMMZ.FXNREQ.I.004 | El sistema debe generar reportes de stock de vacunas por establecimiento | Alta |
| IMMZ.FXNREQ.I.005 | El sistema debe generar el consolidado de ESAFI para su reporte al INS | Media |


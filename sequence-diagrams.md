# Diagramas de Secuencia - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Modelos de Datos e Intercambio**](data-models-and-exchange.md)
* **Diagramas de Secuencia**

## Diagramas de Secuencia

Esta página describe los diagramas de secuencia para los flujos de trabajo clave del programa de inmunizaciones del Perú. Los diagramas de secuencia representan las interacciones entre los actores del sistema en orden cronológico, derivados de los procesos de negocio.

### Flujo de registro y vacunación (IMMZ.C + IMMZ.D)

El flujo principal de vacunación en un establecimiento de salud del MINSA sigue esta secuencia:

1. La madre/padre/cuidador acude al establecimiento de salud con el niño y presenta el DNI/CUI y el carné de vacunación.
1. La enfermera vacunadora busca al paciente en el REI utilizando el DNI/CUI.
1. Si el paciente no está registrado, el sistema consulta a RENIEC para obtener los datos demográficos y crea un registro.
1. El sistema consulta el historial de vacunación del paciente.
1. El sistema ejecuta la lógica de decisión (PlanDefinition/CQL) para determinar las vacunas que corresponden según la edad y el historial.
1. La enfermera verifica las contraindicaciones y confirma las vacunas a administrar.
1. La enfermera administra las vacunas.
1. La enfermera registra la vacunación en el REI (vacuna, dosis, lote, fecha de vencimiento, fabricante).
1. El sistema calcula y registra la próxima cita de vacunación.
1. La enfermera actualiza el carné de vacunación físico.
1. La enfermera brinda consejería post-vacunal a la madre/padre/cuidador.

### Flujo de seguimiento de inasistentes (IMMZ.F)

1. El sistema genera periódicamente la lista de pacientes con vacunaciones atrasadas.
1. La enfermera o coordinador revisa la lista y la distribuye a los ACS por sector/comunidad.
1. El ACS realiza la visita domiciliaria para captar al paciente.
1. Si el paciente acepta, el ACS lo acompaña al establecimiento de salud o registra la cita.
1. Se ejecuta el flujo de vacunación estándar (IMMZ.C + IMMZ.D).
1. El resultado del seguimiento se registra en el sistema.

### Flujo de generación de reportes (IMMZ.I)

1. El coordinador ESNI o la enfermera solicita la generación de un reporte.
1. El sistema ejecuta los Measures definidos para cada indicador contra los datos del período solicitado.
1. El sistema genera los MeasureReports con los datos agregados.
1. Los reportes se presentan al usuario con las desagregaciones solicitadas (ámbito geográfico, grupo etario, tipo de establecimiento).
1. Los datos pueden ser exportados en formato compatible con el HIS-MINSA.

### Flujo de sincronización con sistemas nacionales

1. El REI sincroniza periódicamente los registros de vacunación con el HIS-MINSA.
1. El REI consulta al servicio de terminología (SVCM) para obtener actualizaciones de los catálogos de vacunas.
1. El REI consulta al RENAES (vía mCSD) para obtener actualizaciones del directorio de establecimientos.
1. El REI reporta los ESAFI al sistema de vigilancia epidemiológica del INS.


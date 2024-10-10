Esta página describe los diagramas de secuencia para los flujos de trabajo clave del programa de inmunizaciones del Perú. Los diagramas de secuencia representan las interacciones entre los actores del sistema en orden cronológico, derivados de los procesos de negocio.

### Flujo de registro y vacunación (IMMZ.C + IMMZ.D)

El flujo principal de vacunación en un establecimiento de salud del MINSA sigue esta secuencia:

1. La madre/padre/cuidador acude al establecimiento de salud con el niño y presenta el DNI/CUI y el carné de vacunación.
2. La enfermera vacunadora busca al paciente en el REI utilizando el DNI/CUI.
3. Si el paciente no está registrado, el sistema consulta a RENIEC para obtener los datos demográficos y crea un registro.
4. El sistema consulta el historial de vacunación del paciente.
5. El sistema ejecuta la lógica de decisión (PlanDefinition/CQL) para determinar las vacunas que corresponden según la edad y el historial.
6. La enfermera verifica las contraindicaciones y confirma las vacunas a administrar.
7. La enfermera administra las vacunas.
8. La enfermera registra la vacunación en el REI (vacuna, dosis, lote, fecha de vencimiento, fabricante).
9. El sistema calcula y registra la próxima cita de vacunación.
10. La enfermera actualiza el carné de vacunación físico.
11. La enfermera brinda consejería post-vacunal a la madre/padre/cuidador.

### Flujo de seguimiento de inasistentes (IMMZ.F)

1. El sistema genera periódicamente la lista de pacientes con vacunaciones atrasadas.
2. La enfermera o coordinador revisa la lista y la distribuye a los ACS por sector/comunidad.
3. El ACS realiza la visita domiciliaria para captar al paciente.
4. Si el paciente acepta, el ACS lo acompaña al establecimiento de salud o registra la cita.
5. Se ejecuta el flujo de vacunación estándar (IMMZ.C + IMMZ.D).
6. El resultado del seguimiento se registra en el sistema.

### Flujo de generación de reportes (IMMZ.I)

1. El coordinador ESNI o la enfermera solicita la generación de un reporte.
2. El sistema ejecuta los Measures definidos para cada indicador contra los datos del período solicitado.
3. El sistema genera los MeasureReports con los datos agregados.
4. Los reportes se presentan al usuario con las desagregaciones solicitadas (ámbito geográfico, grupo etario, tipo de establecimiento).
5. Los datos pueden ser exportados en formato compatible con el HIS-MINSA.

### Flujo de sincronización con sistemas nacionales

1. El REI sincroniza periódicamente los registros de vacunación con el HIS-MINSA.
2. El REI consulta al servicio de terminología (SVCM) para obtener actualizaciones de los catálogos de vacunas.
3. El REI consulta al RENAES (vía mCSD) para obtener actualizaciones del directorio de establecimientos.
4. El REI reporta los ESAFI al sistema de vigilancia epidemiológica del INS.

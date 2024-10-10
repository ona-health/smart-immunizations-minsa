Esta página describe las transacciones FHIR con eventos disparadores, semántica de mensajes y acciones esperadas para el sistema de inmunizaciones del Perú.

Consulte las [Transacciones de DDCC](https://worldhealthorganization.github.io/ddcc/transactions.html) para transacciones adicionales que pueden ser relevantes en el contexto de certificados de vacunación digitales.

### Transacciones principales

| ID | Nombre | Descripción | Actor origen | Actor destino |
|---|---|---|---|---|
| IMMZ.TX.01 | Buscar paciente | Buscar un paciente por DNI/CUI, nombre o fecha de nacimiento en el REI | Enfermera vacunadora | REI |
| IMMZ.TX.02 | Registrar paciente | Crear o actualizar el registro del paciente con datos demográficos validados por RENIEC | Enfermera vacunadora | REI |
| IMMZ.TX.03 | Consultar historial de vacunación | Obtener el historial completo de vacunación del paciente | Enfermera vacunadora | REI |
| IMMZ.TX.04 | Obtener recomendaciones de vacunación | Ejecutar la lógica de decisión para determinar las vacunas que corresponden al paciente | REI | Motor CQL |
| IMMZ.TX.05 | Registrar vacunación | Registrar una vacunación administrada con todos los datos requeridos | Enfermera vacunadora | REI |
| IMMZ.TX.06 | Notificar ESAFI | Registrar y notificar un evento adverso post-vacunación | Enfermera vacunadora | REI / Vigilancia epidemiológica |
| IMMZ.TX.07 | Generar reporte de cobertura | Ejecutar los Measures para generar reportes de cobertura vacunal | Coordinador ESNI | REI |
| IMMZ.TX.08 | Verificar identidad | Consultar a RENIEC para validar el DNI/CUI del paciente | REI | RENIEC |
| IMMZ.TX.09 | Consultar establecimiento | Consultar al RENAES para obtener datos del establecimiento de salud | REI | RENAES |
| IMMZ.TX.10 | Sincronizar con HIS | Enviar datos de vacunación al HIS-MINSA | REI | HIS-MINSA |

### Recursos FHIR por transacción

| Transacción | Recursos FHIR principales |
|---|---|
| Buscar paciente | Patient (search) |
| Registrar paciente | Patient (create/update) |
| Consultar historial | Immunization (search), ImmunizationRecommendation |
| Obtener recomendaciones | PlanDefinition/$apply, Library (CQL) |
| Registrar vacunación | Immunization (create), Encounter (create) |
| Notificar ESAFI | AdverseEvent (create) |
| Generar reporte | Measure/$evaluate-measure, MeasureReport |
| Verificar identidad | Patient/$match |
| Consultar establecimiento | Location/Organization (search) |
| Sincronizar con HIS | Bundle (transaction) |

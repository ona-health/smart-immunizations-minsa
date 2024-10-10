Esta página incluye los datos de prueba desarrollados para los escenarios de prueba y actores incluidos en esta guía de implementación. Consulte [Pruebas](testing.html) para artefactos de prueba adicionales.

Los artefactos de prueba en esta guía de implementación no están destinados a ser utilizados para determinar la conformidad formal, ni pretenden ser autoritativos o exhaustivos.

### Datos de prueba para el contexto peruano

Los datos de prueba incluyen pacientes ficticios que representan los siguientes escenarios del esquema de vacunación peruano:

| Escenario | Descripción | Antígenos involucrados |
|---|---|---|
| Recién nacido sano | Niño de 0 días, sin vacunas previas. Debe recibir BCG y HvB dosis neonatal. | BCG, HvB |
| Niño de 2 meses | Niño con BCG y HvB al nacer. Debe recibir 1ra dosis de Pentavalente, IPV y Rotavirus. | Pentavalente, IPV, Rotavirus |
| Niño de 4 meses | Niño con esquema al día. Debe recibir 2da dosis de Pentavalente, IPV y Rotavirus. | Pentavalente, IPV, Rotavirus |
| Niño de 6 meses | Niño con esquema al día. Debe recibir 3ra dosis de Pentavalente y bOPV. | Pentavalente, bOPV |
| Niño de 12 meses | Niño con esquema al día. Debe recibir SPR 1ra dosis, Varicela y refuerzo de Neumococo. | SPR, Varicela, PCV |
| Niño de 15 meses | Niño con esquema al día. Debe recibir Fiebre Amarilla y Hepatitis A. | FA, HA |
| Niño de 18 meses | Niño con esquema al día. Debe recibir SPR 2da dosis y DPT 1er refuerzo. | SPR, DPT |
| Niño de 4 años | Niño con esquema al día. Debe recibir DPT 2do refuerzo y bOPV refuerzo. | DPT, bOPV |
| Niño con esquema atrasado | Niño de 9 meses con solo BCG y HvB. Debe recibir las vacunas pendientes según esquema de recuperación. | Múltiples |
| Niño con contraindicación | Niño con antecedente de reacción alérgica severa a una vacuna previa. | Según contraindicación |
| Gestante | Mujer de 28 semanas de gestación sin vacunación previa con dT. | dT, Influenza |
| Niña de 10 años | Niña elegible para VPH, sin dosis previa. | VPH |

### Formato de los datos

Los datos de prueba se proporcionan en los siguientes formatos:

- **FHIR Shorthand (FSH)**: Archivos .fsh en la carpeta `input/fsh/examples/`
- **Recursos FHIR JSON**: Generados a partir de los archivos FSH durante la compilación de la guía
- **Archivos Gherkin (.feature)**: En la carpeta `input/testing/` con los criterios de aceptación

### Datos de identificación ficticios

Los datos de prueba utilizan identificadores ficticios que siguen el formato peruano:
- DNI: números de 8 dígitos que comienzan con 99 (ej. 99000001)
- CUI: números que comienzan con 8 (ej. 80000001)
- Código RENAES: códigos ficticios de 5 dígitos
- Ubigeo: códigos reales de ubicación geográfica del INEI para las localidades de prueba

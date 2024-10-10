Los siguientes estándares y perfiles son referenciados en esta guía de implementación:

### Guías de Implementación base

* [WHO SMART Guidelines - Immunizations Implementation Guide](https://smart.who.int/ig/smart-immunizations/)
  * Esta guía es la base sobre la cual se construye la adaptación para el Perú. Contiene la lógica genérica de la OMS para inmunizaciones.

* [WHO SMART Guidelines - DAK for Immunizations](https://worldhealthorganization.github.io/smart-dak-immz/)
  * El Kit de Adaptación Digital que contiene el diccionario de datos, lógica de decisión e indicadores a nivel operacional (L2).

### Estándares HL7 FHIR

* [HL7 FHIR R4](https://hl7.org/fhir/R4/)
  * La especificación base de FHIR sobre la cual se definen todos los perfiles y recursos.

* [FHIR Clinical Practice Guidelines (CPG)](http://hl7.org/fhir/uv/cpg/)
  * Utilizado para las definiciones de PlanDefinition, ActivityDefinition y la representación de guías clínicas computables.

* [International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips/)
  * Utilizado para el perfil base de Patient y los conceptos de resumen de paciente.

* [Structured Data Capture (SDC)](http://hl7.org/fhir/uv/sdc/)
  * Utilizado para los Questionnaires avanzados con extracción de datos y precarga.

* [Clinical Quality Language (CQL) Specification](https://cql.hl7.org/)
  * Lenguaje utilizado para expresar la lógica de decisión clínica y el cálculo de indicadores.

### Integrating the Healthcare Enterprise (IHE)

* [Audit Trail and Node Authentication (ATNA)](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html)
  * Para auditoría y seguridad de las transacciones.

* [Sharing Valuesets and Concept Maps (SVCM)](https://profiles.ihe.net/ITI/SVCM/index.html)
  * Para la distribución de terminologías y conjuntos de valores.

* [Mobile Care Services Discovery (mCSD)](https://profiles.ihe.net/ITI/mCSD/index.html)
  * Para la gestión del directorio de establecimientos de salud (RENAES).

### Terminologías

* [SNOMED CT GPS](https://www.snomed.org/gps) - Terminología clínica para codificación de vacunas y diagnósticos.
* [WHO ATC](https://www.who.int/tools/atc-ddd-toolkit/atc-classification) - Clasificación Anatómica Terapéutica Química para productos vacunales.
* [ICD-11](https://icd.who.int/en) - Clasificación Internacional de Enfermedades, 11.ª Revisión.
* [LOINC](https://loinc.org/) - Códigos para observaciones clínicas y de laboratorio.

Las terminologías incluidas en esta guía de implementación deben ser verificadas y actualizadas antes de su uso en un ambiente de producción, ya que los mecanismos de distribución pueden variar según la implementación. Asegúrese de tener los conjuntos de valores más recientes basados en las definiciones de inclusión/exclusión de cada uno.

### Sistemas de codificación utilizados

Esta guía utiliza los siguientes sistemas de codificación:

| Sistema | URI | Uso |
|---|---|---|
| SNOMED CT GPS | http://snomed.info/sct | Codificación de vacunas, diagnósticos y procedimientos clínicos |
| WHO ATC | http://www.whocc.no/atc | Clasificación de productos vacunales |
| ICD-11 | http://id.who.int/icd/release/11/mms | Clasificación de enfermedades prevenibles por vacunación y ESAFI |
| LOINC | http://loinc.org | Códigos para observaciones clínicas |
| HL7 FHIR | http://terminology.hl7.org | Terminología base de FHIR |
| MINSA-HIS | (por definir) | Códigos del sistema HIS-MINSA para prestaciones de vacunación |

### Mapeos de terminología

Para facilitar la interoperabilidad entre los sistemas internacionales y los sistemas nacionales del MINSA, se han definido ConceptMaps que establecen correspondencias entre:

- Códigos SNOMED CT GPS de vacunas y códigos del catálogo de vacunas del MINSA
- Códigos ATC de productos vacunales y los nombres comerciales utilizados en el Perú
- Códigos de establecimientos de salud (RENAES) y los identificadores utilizados en otros sistemas

### CodeSystems

Los siguientes CodeSystems están definidos en esta guía:

{% include list-simple-codesystems.xhtml %}

### ValueSets

Los siguientes ValueSets están definidos en esta guía:

{% include list-simple-valuesets.xhtml %}

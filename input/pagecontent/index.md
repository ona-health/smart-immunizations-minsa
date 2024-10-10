Esta Guía de Implementación (GI) del MINSA Perú para Inmunizaciones detalla cómo utilizar Health Level 7 (HL7) Fast Healthcare Interoperability Resources (FHIR) para la representación digital consistente de los servicios de inmunización en el Perú.

<div>
<p> Esta guía de implementación y conjunto de artefactos se encuentran en desarrollo activo. </p>
<p> El contenido es para fines de demostración. </p>
</div>{:.stu-note}

### Resumen

Esta guía de implementación es una adaptación país de la [Guía de Implementación SMART de la OMS para Inmunizaciones](https://smart.who.int/ig/smart-immunizations/) para el contexto del Perú, alineada con la Estrategia Sanitaria Nacional de Inmunizaciones (ESNI) del Ministerio de Salud (MINSA).

Incluye una representación legible por máquina de las normas peruanas de inmunización, basada en la Norma Técnica de Salud (NTS) que establece el Esquema Nacional de Vacunación, y codifica de manera explícita la lógica computacional, incluyendo modelos de datos, terminologías y expresiones lógicas en un lenguaje computable para apoyar la implementación de los casos de uso de inmunización por parte del MINSA y las Direcciones Regionales de Salud (DIRESA/GERESA).

La guía forma parte del enfoque [SMART Guidelines de la OMS](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines) para apoyar a los países en la integración de las recomendaciones globales de salud y datos en los sistemas digitales de manera precisa y consistente. Define una serie de Recursos FHIR, Perfiles, Extensiones y Terminología basados en el [Kit de Adaptación Digital (DAK) de la OMS para Inmunizaciones](https://www.who.int/publications/i/item/9789240099456), adaptados al esquema de vacunación peruano.

### Antígenos cubiertos

El esquema nacional de vacunación del Perú incluye los siguientes antígenos, los cuales son abordados en esta guía de implementación:

| Antígeno | Vacuna | Edad de aplicación |
|---|---|---|
| Tuberculosis | BCG | Recién nacido |
| Hepatitis B | HvB (dosis neonatal) | Recién nacido (primeras 24 horas) |
| Poliomielitis | IPV / bOPV | 2, 4, 6 meses y refuerzos |
| Difteria, Tétanos, Pertussis | Pentavalente (DPT-HB-Hib) | 2, 4, 6 meses |
| Haemophilus influenzae tipo b | Pentavalente | 2, 4, 6 meses |
| Rotavirus | Rotavirus | 2 y 4 meses |
| Neumococo | PCV | 2, 4 meses y refuerzo 12 meses |
| Sarampión, Paperas, Rubéola | SPR | 12 meses y 18 meses |
| Varicela | Varicela | 12 meses |
| Fiebre Amarilla | FA | 15 meses |
| Hepatitis A | HA | 15 meses |
| Difteria, Pertussis, Tétanos (refuerzo) | DPT | 18 meses y 4 años |
| Virus del Papiloma Humano | VPH | Niñas de 9 a 13 años |
| Influenza | Influenza estacional | 6 meses a 2 años, gestantes, adultos mayores |
| Difteria, Tétanos (adulto) | dT | Gestantes, MEF, adultos |

### Acerca de esta guía de implementación

Esta guía de implementación está organizada en los siguientes niveles de [representación del conocimiento](https://hl7.org/fhir/uv/cpg/documentation-approach-06-01-levels-of-knowledge-representation.html):

- <a href="index.html">Inicio</a> - contiene referencias a la normativa, directrices, políticas y recomendaciones que sustentan esta guía de implementación.
- <a href="business-requirements.html">Requisitos del Negocio</a> - contiene los requisitos de esta guía incluyendo la definición de conceptos clave, casos de uso y diccionario de datos.
- <a href="data-models-and-exchange.html">Modelos de Datos e Intercambio</a> - contiene los modelos de datos y protocolos de intercambio con actores y transacciones definidas.
- <a href="deployment.html">Guía de Despliegue</a> - contiene las especificaciones técnicas relevantes, recursos de prueba, materiales de implementación de referencia y orientación para la adaptación a contextos locales.

### Instituciones clave

| Institución | Rol |
|---|---|
| MINSA | Ministerio de Salud - Ente rector de la política nacional de salud |
| ESNI | Estrategia Sanitaria Nacional de Inmunizaciones - Coordinación del programa de vacunación |
| DIRESA/GERESA | Direcciones/Gerencias Regionales de Salud - Implementación regional |
| RENIEC | Registro Nacional de Identificación y Estado Civil - Identificación del paciente |
| SIS | Seguro Integral de Salud - Aseguramiento en salud |
| INS | Instituto Nacional de Salud - Vigilancia epidemiológica |
| DIGEMID | Dirección General de Medicamentos, Insumos y Drogas - Regulación de vacunas |

### Descargo de responsabilidad

La especificación aquí documentada es una especificación de trabajo en desarrollo y no debe ser utilizada para propósitos de implementación en producción sin la validación correspondiente. Este borrador se proporciona sin garantía de completitud o consistencia y la publicación oficial reemplaza a este borrador.

{% include ip-statements.xhtml %}

# Conceptos - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Requisitos de Negocio**](business-requirements.md)
* **Conceptos**

## Conceptos

Los conceptos clave y abreviaturas se describen a continuación. Los términos adicionales están definidos en el Glosario del [Kit de Adaptación Digital de la OMS para Inmunizaciones](https://iris.who.int/handle/10665/380303).

### Conceptos

| | |
| :--- | :--- |
| Esquema nacional de vacunación | Conjunto de vacunas que el Estado peruano, a través del MINSA, ofrece de manera gratuita y obligatoria a toda la población, según grupos de edad y condiciones de riesgo. Está establecido por la Norma Técnica de Salud (NTS) vigente. |
| Cadena de frío | Sistema logístico que asegura la conservación de las vacunas dentro del rango de temperatura adecuado (generalmente +2°C a +8°C) desde su fabricación hasta su administración al paciente. Incluye equipos de refrigeración, termos, cajas térmicas y procedimientos de monitoreo. |
| ESAFI | Evento Supuestamente Atribuido a la Vacunación o Inmunización. Cualquier situación de salud no esperada (signo, hallazgo anormal de laboratorio, síntoma o enfermedad) que ocurre después de la vacunación y que no necesariamente tiene una relación causal con la vacunación. Su notificación y vigilancia son obligatorias. |
| Cobertura vacunal | Porcentaje de la población objetivo que ha recibido las dosis completas de una vacuna determinada en un período y ámbito geográfico específico. Es el principal indicador de desempeño del programa de inmunizaciones. |
| Deserción vacunal | Porcentaje de personas que inician un esquema de vacunación pero no completan todas las dosis requeridas. Se calcula comparando la primera y última dosis de un esquema. |
| Vacunación segura | Práctica que asegura el uso de vacunas de calidad, la aplicación de técnicas correctas de inyección, el monitoreo de ESAFI y la eliminación segura de desechos de la vacunación. |
| Oportunidad perdida de vacunación | Situación en la que una persona elegible para vacunación acude a un establecimiento de salud pero no recibe las vacunas que le corresponden según su edad y esquema vigente. |
| Padrón nominado | Registro nominal de la población objetivo de vacunación en un ámbito geográfico determinado, que permite la planificación, seguimiento y evaluación de las actividades de inmunización. |
| Barrido de vacunación | Estrategia de vacunación casa por casa que se realiza para completar la vacunación de personas que no acudieron a los establecimientos de salud, con el objetivo de cerrar brechas de cobertura. |
| [Clinical Quality Language (CQL)](https://cql.hl7.org/) | Especificación de HL7 para la expresión de conocimiento clínico que puede ser utilizada tanto en el dominio de Soporte a la Decisión Clínica (CDS) como en el dominio de Medición de Calidad Clínica (CQM). |
| [Fast Healthcare Interoperability Resources (FHIR)](https://www.hl7.org/fhir/overview.html) | Estándar que describe formatos de datos, elementos y una interfaz de programación de aplicaciones para el intercambio de registros electrónicos de salud. |
| [Guía de Implementación (IG)](https://build.fhir.org/implementationguide.html) | Conjunto de reglas sobre cómo los recursos FHIR se utilizan para resolver un problema particular, con documentación asociada. Esta GI se basa en la guía de la OMS adaptada al contexto peruano. |
| Registro Electrónico de Inmunización (REI) | Sistema de información que registra de manera individual y nominal cada dosis de vacuna administrada, permitiendo el seguimiento del esquema de vacunación de cada persona. |
| HIS-MINSA | Sistema de Información en Salud del MINSA. Plataforma oficial para el reporte de atenciones y actividades de salud, incluyendo las vacunaciones realizadas en los establecimientos del primer nivel de atención. |

### Abreviaturas

| | |
| :--- | :--- |
| ACS | Agente Comunitario de Salud |
| BCG | Bacilo de Calmette-Guérin (vacuna contra la tuberculosis) |
| CQL | Clinical Quality Language |
| DAK | Kit de Adaptación Digital (Digital Adaptation Kit) |
| DIGEMID | Dirección General de Medicamentos, Insumos y Drogas |
| DIRESA | Dirección Regional de Salud |
| DPT | Difteria, Pertussis (Tos ferina) y Tétanos |
| dT | Difteria y Tétanos (formulación para adultos) |
| ESAFI | Evento Supuestamente Atribuido a la Vacunación o Inmunización |
| ESNI | Estrategia Sanitaria Nacional de Inmunizaciones |
| FHIR | Fast Healthcare Interoperability Resources |
| GERESA | Gerencia Regional de Salud |
| GI / IG | Guía de Implementación / Implementation Guide |
| HIS | Health Information System (Sistema de Información en Salud) |
| HvB | Hepatitis viral B |
| INS | Instituto Nacional de Salud |
| IPV | Vacuna Inactivada contra la Poliomielitis |
| MEF | Mujer en Edad Fértil |
| MINSA | Ministerio de Salud |
| NTS | Norma Técnica de Salud |
| bOPV | Vacuna Oral Bivalente contra la Poliomielitis |
| PCV | Vacuna Conjugada contra el Neumococo (Pneumococcal Conjugate Vaccine) |
| RENAES | Registro Nacional de Establecimientos de Salud |
| RENIEC | Registro Nacional de Identificación y Estado Civil |
| SIS | Seguro Integral de Salud |
| SPR | Sarampión, Paperas y Rubéola (vacuna triple vírica) |
| VPH | Virus del Papiloma Humano |


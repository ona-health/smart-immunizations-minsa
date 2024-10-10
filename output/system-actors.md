# Actores del Sistema - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Modelos de Datos e Intercambio**](data-models-and-exchange.md)
* **Actores del Sistema**

## Actores del Sistema

Esta página lista y describe los usuarios humanos y servicios digitales que interactúan con el sistema, derivados de los requisitos de negocio definidos a nivel operacional (L2). Para más detalles sobre los usuarios finales y actores relacionados, consulte las [Personas](personas.md) y el [Kit de Adaptación Digital de la OMS para Inmunizaciones](https://iris.who.int/handle/10665/380303).

Los sistemas que gestionan información clínica y del paciente deben interactuar con un registro de salud compartido, sistemas de laboratorio o un registro longitudinal de salud, según corresponda, y sincronizarse con los datos recolectados en un encuentro clínico.

### Actores humanos del sistema

En los flujos clínicos, las personas genéricas se representan utilizando perfiles de los diferentes recursos de entidad en HL7 FHIR, tales como [Patient](http://hl7.org/fhir/patient), [Practitioner](http://hl7.org/fhir/practitioner), [PractitionerRole](http://hl7.org/fhir/practitionerrole), y [RelatedPerson](http://hl7.org/fhir/relatedperson).

| | | |
| :--- | :--- | :--- |
| Paciente (niño/adulto) | Patient | Persona que recibe la vacunación. Identificado por DNI o CUI (RENIEC). |
| Enfermera vacunadora | Practitioner / PractitionerRole | Profesional de enfermería que administra las vacunas y registra la atención. |
| Madre/Padre/Cuidador | RelatedPerson | Persona responsable del menor que acompaña al paciente. |
| Coordinador ESNI | Practitioner / PractitionerRole | Profesional que coordina el programa de inmunizaciones a nivel regional o local. |
| Digitador | Practitioner / PractitionerRole | Personal que ingresa datos de vacunación en los sistemas de información. |
| ACS | Practitioner / PractitionerRole | Agente comunitario que realiza seguimiento en la comunidad. |

### Actores del sistema (servicios digitales)

| | | |
| :--- | :--- | :--- |
| Registro Electrónico de Inmunización (REI) | Sistema principal que registra las vacunaciones individuales y gestiona el esquema de vacunación | FHIR Immunization, ImmunizationRecommendation |
| Registro Maestro de Establecimientos (RENAES) | Directorio nacional de establecimientos de salud con su código único, ubicación y nivel de atención | IHE mCSD |
| Servicio de Identidad (RENIEC) | Servicio de verificación de identidad del ciudadano mediante DNI/CUI | FHIR Patient matching |
| Sistema de Información en Salud (HIS-MINSA) | Sistema nacional de reporte de atenciones de salud que recibe los datos de vacunación agregados | FHIR Measure / MeasureReport |
| Seguro Integral de Salud (SIS) | Sistema de aseguramiento que verifica la cobertura del paciente | FHIR Coverage |
| Servicio de Terminología | Servicio que gestiona los catálogos de vacunas, diagnósticos y procedimientos | IHE SVCM |
| Sistema de Vigilancia Epidemiológica | Sistema del INS para la notificación y seguimiento de ESAFI y enfermedades prevenibles por vacunación | FHIR AdverseEvent |


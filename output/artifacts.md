# Artifacts Summary - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Knowledge Artifacts: Plan Definitions 

These define workflows, rules, strategies, or protocols as part of content in this implementation guide.

| | |
| :--- | :--- |
| [Esquema Nacional de Vacunacion - MINSA Peru](PlanDefinition-MINSAEsquemaVacunacion.md) | Esquema Nacional de Vacunacion del Ministerio de Salud del Peru (MINSA). Define el calendario de inmunizaciones para ninos desde el nacimiento hasta los 13 anos segun la Norma Tecnica de Salud que establece el Esquema Nacional de Vacunacion. |
| [MINSA - Vacunacion BCG](PlanDefinition-MINSABCGVacunacion.md) | Logica de decision para la vacunacion BCG segun el Esquema Nacional de Vacunacion del Peru. La vacuna BCG se administra en dosis unica al recien nacido, preferiblemente dentro de las primeras 24 horas de vida. |
| [MINSA - Vacunacion Pentavalente (DPT-HepB-Hib)](PlanDefinition-MINSAPentavalenteVacunacion.md) | Logica de decision para la vacunacion Pentavalente segun el Esquema Nacional de Vacunacion del Peru. La vacuna Pentavalente (DPT-HepB-Hib) se administra en 3 dosis a los 2, 4 y 6 meses de edad, con un intervalo minimo de 8 semanas entre dosis. |
| [MINSA - Vacunacion SPR (Sarampion-Paperas-Rubeola)](PlanDefinition-MINSASPRVacunacion.md) | Logica de decision para la vacunacion SPR (Sarampion, Paperas, Rubeola) segun el Esquema Nacional de Vacunacion del Peru. Se administra la primera dosis a los 12 meses de edad y una dosis de refuerzo a los 18 meses. |
| [MINSA - Vacunacion contra Neumococo (PCV)](PlanDefinition-MINSANeumococoVacunacion.md) | Logica de decision para la vacunacion antineumococica conjugada segun el Esquema Nacional de Vacunacion del Peru. Esquema 2+1: dos dosis primarias a los 2 y 4 meses de edad, con una dosis de refuerzo a los 12 meses. |
| [MINSA - Vacunacion contra Poliomielitis (IPV/APO)](PlanDefinition-MINSAPolioVacunacion.md) | Logica de decision para la vacunacion contra Poliomielitis segun el Esquema Nacional de Vacunacion del Peru. Esquema secuencial: IPV (inyectable) a los 2 y 4 meses, APO (oral) a los 6 y 18 meses, y refuerzo con APO a los 4 anos de edad. |
| [MINSA - Vacunacion contra Rotavirus](PlanDefinition-MINSARotavirusVacunacion.md) | Logica de decision para la vacunacion contra Rotavirus segun el Esquema Nacional de Vacunacion del Peru. Se administran 2 dosis a los 2 y 4 meses de edad. La primera dosis no debe administrarse despues de las 15 semanas de vida. |
| [MINSA - Vacunacion contra VPH (Virus del Papiloma Humano)](PlanDefinition-MINSAHPVVacunacion.md) | Logica de decision para la vacunacion contra el Virus del Papiloma Humano (VPH) segun el Esquema Nacional de Vacunacion del Peru. Se administran 2 dosis a ninas de 9 a 13 anos de edad, con un intervalo de 6 meses entre dosis. |

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [MINSA - Eliminar Paciente](Questionnaire-MINSAQEliminarPaciente.md) | Cuestionario para eliminar (dar de baja) a un paciente del registro de inmunizaciones. Se utiliza cuando el paciente se ha mudado, ha fallecido, tiene registro duplicado u otra razón. |
| [MINSA - Registro de Evento Adverso](Questionnaire-MINSAQRegistroEventoAdverso.md) | Cuestionario para registrar un evento adverso supuestamente atribuible a la vacunación o inmunización (ESAVI). Adaptado del cuestionario MINSA EIR record_adverse_event. |
| [MINSA - Registro de Paciente](Questionnaire-MINSAQRegistroPaciente.md) | Cuestionario para el registro de pacientes (niños) en el programa de inmunizaciones del MINSA Perú. Incluye datos del cuidador, datos del niño, ubicación geográfica y seguro SIS. |
| [MINSA - Registro de Vacunación](Questionnaire-MINSAQRegistroVacuna.md) | Cuestionario para registrar la administración de una vacuna individual. Adaptado del cuestionario MINSA EIR record_child_immunization. |
| [MINSA - Silenciar Paciente](Questionnaire-MINSAQSilenciarPaciente.md) | Cuestionario para silenciar un paciente, desactivando los recordatorios de vacunación. Se utiliza cuando el paciente se ha mudado, fue transferido o se perdió el seguimiento. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Cuidador MINSA Perú](StructureDefinition-MINSA.RelatedPerson.md) | Perfil de Persona Relacionada (cuidador) para el programa de inmunizaciones del Ministerio de Salud del Perú (MINSA). Extiende el perfil IMMZCaregiver de las Directrices SMART de la OMS con identificación peruana. |
| [Inmunización MINSA Perú](StructureDefinition-MINSA.Immunization.md) | Perfil de Inmunización para el programa de inmunizaciones del Ministerio de Salud del Perú (MINSA). Extiende el perfil IMMZImmunization de las Directrices SMART de la OMS con el esquema nacional de vacunación. |
| [Paciente MINSA Perú](StructureDefinition-MINSA.Patient.md) | Perfil de Paciente para el programa de inmunizaciones del Ministerio de Salud del Perú (MINSA). Extiende el perfil IMMZPatient de las Directrices SMART de la OMS con identificadores y divisiones administrativas peruanas. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Departamento del Perú](StructureDefinition-MINSADepartamento.md) | División administrativa de primer nivel del Perú (Departamento) donde reside el paciente. |
| [Distrito del Perú](StructureDefinition-MINSADistrito.md) | División administrativa de tercer nivel del Perú (Distrito) donde reside el paciente. |
| [Provincia del Perú](StructureDefinition-MINSAProvincia.md) | División administrativa de segundo nivel del Perú (Provincia) donde reside el paciente. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Números de Dosis del Esquema de Vacunación - MINSA](ValueSet-MINSADoseNumberVS.md) | Conjunto de valores para los números de dosis utilizados en el esquema nacional de vacunación del Perú |
| [Razones de No Administración de Vacuna - MINSA](ValueSet-MINSAImmunizationReasonNotGivenVS.md) | Conjunto de valores para las razones por las cuales una vacuna no fue administrada, según el Registro Electrónico de Inmunizaciones de MINSA |
| [Tipos de Documento de Identidad - MINSA](ValueSet-MINSAIdentifierTypeVS.md) | Conjunto de valores para los tipos de documento de identidad utilizados en el sistema de inmunizaciones del Perú |
| [Vacunas del Esquema Nacional de Vacunación MINSA](ValueSet-MINSAVaccineVS.md) | Conjunto de valores para las vacunas utilizadas en el esquema nacional de vacunación del Perú, incluyendo códigos MINSA y referencias a códigos WHO |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Sistema de Códigos MINSA para Inmunizaciones](CodeSystem-MINSA.md) | Códigos utilizados por el Ministerio de Salud del Perú (MINSA) para el registro electrónico de inmunizaciones |
| [Tipos de Documento de Identidad - Perú](CodeSystem-MINSAIdentifierTypes.md) | Tipos de documento de identidad utilizados en el sistema de salud del Perú |

### Terminology: Structure Maps 

These define transformations to convert between data structures used by systems conforming to this implementation guide.

| |
| :--- |
| [MINSA.EventoAdverso.QRToObservation](StructureMap-MINSA.EventoAdverso.QRToObservation.md) |
| [MINSA.Helpers](StructureMap-MINSA.Helpers.md) |
| [MINSA.RegistroPaciente.QRToPatient](StructureMap-MINSA.RegistroPaciente.QRToPatient.md) |
| [MINSA.RegistroVacuna.QRToImmunization](StructureMap-MINSA.RegistroVacuna.QRToImmunization.md) |


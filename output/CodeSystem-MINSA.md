# Sistema de Códigos MINSA para Inmunizaciones - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sistema de Códigos MINSA para Inmunizaciones**

## CodeSystem: Sistema de Códigos MINSA para Inmunizaciones 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/CodeSystem/MINSA | *Version*:1.0.0 |
| Active as of 2026-03-16 | *Computable Name*:MINSA |

 
Códigos utilizados por el Ministerio de Salud del Perú (MINSA) para el registro electrónico de inmunizaciones 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MINSADoseNumberVS](ValueSet-MINSADoseNumberVS.md)
* [MINSAImmunizationReasonNotGivenVS](ValueSet-MINSAImmunizationReasonNotGivenVS.md)
* [MINSAVaccineVS](ValueSet-MINSAVaccineVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MINSA",
  "url" : "http://minsa.gob.pe/immunizations/CodeSystem/MINSA",
  "version" : "1.0.0",
  "name" : "MINSA",
  "title" : "Sistema de Códigos MINSA para Inmunizaciones",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-16T12:33:41-04:00",
  "publisher" : "MINSA - Ministerio de Salud del Perú",
  "contact" : [{
    "name" : "MINSA - Ministerio de Salud del Perú",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gob.pe/minsa"
    }]
  }],
  "description" : "Códigos utilizados por el Ministerio de Salud del Perú (MINSA) para el registro electrónico de inmunizaciones",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PE",
      "display" : "Peru"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 34,
  "concept" : [{
    "code" : "VAC-BCG",
    "display" : "BCG",
    "definition" : "Vacuna Bacilo de Calmette-Guérin contra la tuberculosis"
  },
  {
    "code" : "VAC-OPV",
    "display" : "APO - Antipolio Oral",
    "definition" : "Vacuna Antipolio Oral (tipo Sabin)"
  },
  {
    "code" : "VAC-IPV",
    "display" : "APV - Antipolio Inactivada",
    "definition" : "Vacuna Antipolio Inactivada (tipo Salk)"
  },
  {
    "code" : "VAC-PENTA",
    "display" : "Pentavalente",
    "definition" : "Vacuna Pentavalente (DPT-HepB-Hib)"
  },
  {
    "code" : "VAC-ROTA",
    "display" : "Rotavirus",
    "definition" : "Vacuna contra Rotavirus"
  },
  {
    "code" : "VAC-PCV",
    "display" : "Neumococo",
    "definition" : "Vacuna Antineumocócica Conjugada"
  },
  {
    "code" : "VAC-SPR",
    "display" : "SPR",
    "definition" : "Vacuna contra Sarampión, Paperas y Rubéola"
  },
  {
    "code" : "VAC-HPV",
    "display" : "VPH",
    "definition" : "Vacuna contra el Virus del Papiloma Humano"
  },
  {
    "code" : "VAC-DT",
    "display" : "DT Pediátrico",
    "definition" : "Vacuna contra Difteria y Tétanos (refuerzo pediátrico)"
  },
  {
    "code" : "VAC-INF",
    "display" : "Influenza",
    "definition" : "Vacuna contra la Influenza"
  },
  {
    "code" : "VAC-HEPB",
    "display" : "Hepatitis B",
    "definition" : "Vacuna contra la Hepatitis B (dosis de recién nacido)"
  },
  {
    "code" : "VAC-AMA",
    "display" : "Antiamarílica",
    "definition" : "Vacuna Antiamarílica (Fiebre Amarilla)"
  },
  {
    "code" : "DOSE-BIRTH",
    "display" : "Dosis de recién nacido",
    "definition" : "Dosis administrada dentro de las 24 horas de nacimiento"
  },
  {
    "code" : "DOSE-1",
    "display" : "1ra dosis",
    "definition" : "Primera dosis de la serie"
  },
  {
    "code" : "DOSE-2",
    "display" : "2da dosis",
    "definition" : "Segunda dosis de la serie"
  },
  {
    "code" : "DOSE-3",
    "display" : "3ra dosis",
    "definition" : "Tercera dosis de la serie"
  },
  {
    "code" : "DOSE-R1",
    "display" : "1er refuerzo",
    "definition" : "Primer refuerzo"
  },
  {
    "code" : "DOSE-R2",
    "display" : "2do refuerzo",
    "definition" : "Segundo refuerzo"
  },
  {
    "code" : "ROUTE-ID",
    "display" : "Intradérmica",
    "definition" : "Administración por vía intradérmica"
  },
  {
    "code" : "ROUTE-SC",
    "display" : "Subcutánea",
    "definition" : "Administración por vía subcutánea"
  },
  {
    "code" : "ROUTE-IM",
    "display" : "Intramuscular",
    "definition" : "Administración por vía intramuscular"
  },
  {
    "code" : "ROUTE-VO",
    "display" : "Vía oral",
    "definition" : "Administración por vía oral"
  },
  {
    "code" : "NOREASON-IMMUNITY",
    "display" : "Inmunidad",
    "definition" : "El paciente ya tiene inmunidad contra la enfermedad"
  },
  {
    "code" : "NOREASON-STOCKOUT",
    "display" : "Desabastecimiento",
    "definition" : "No hay disponibilidad del producto vacunal"
  },
  {
    "code" : "NOREASON-PRECAUTION",
    "display" : "Precaución médica",
    "definition" : "El paciente tiene una condición médica que contraindica temporalmente la vacunación"
  },
  {
    "code" : "NOREASON-EXPIRED",
    "display" : "Producto vencido",
    "definition" : "El producto vacunal está vencido"
  },
  {
    "code" : "NOREASON-CLIENT",
    "display" : "Rechazo del cliente",
    "definition" : "El cliente o su representante rechaza la vacunación"
  },
  {
    "code" : "NOREASON-CAREGIVER",
    "display" : "Rechazo del cuidador",
    "definition" : "El cuidador del niño rechaza la vacunación"
  },
  {
    "code" : "NOREASON-ABSENT",
    "display" : "Niño no presente",
    "definition" : "El niño no se presentó a la cita de vacunación"
  },
  {
    "code" : "NOREASON-SICK",
    "display" : "Niño enfermo",
    "definition" : "El niño presenta enfermedad que posterga la vacunación"
  },
  {
    "code" : "NOREASON-AGE",
    "display" : "Fuera de rango de edad",
    "definition" : "El paciente está fuera del rango de edad indicado para la vacuna"
  },
  {
    "code" : "NOREASON-CONTRA",
    "display" : "Contraindicado",
    "definition" : "La vacuna está contraindicada para el paciente"
  },
  {
    "code" : "NOREASON-TIME",
    "display" : "Sin tiempo",
    "definition" : "No hubo tiempo disponible para administrar la vacuna"
  },
  {
    "code" : "NOREASON-OTHER",
    "display" : "Otro",
    "definition" : "La vacuna no fue administrada por otra razón"
  }]
}

```

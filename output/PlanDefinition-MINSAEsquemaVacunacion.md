# Esquema Nacional de Vacunacion - MINSA Peru - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Esquema Nacional de Vacunacion - MINSA Peru**

## PlanDefinition: Esquema Nacional de Vacunacion - MINSA Peru 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/PlanDefinition/MINSAEsquemaVacunacion | *Version*:1.0.0 |
| Active as of 2026-03-16 | *Computable Name*:MINSAEsquemaVacunacion |

 
Esquema Nacional de Vacunacion del Peru para ninos desde el nacimiento hasta los 13 anos. 

* **Actions: **: **Url: **
  * : [Esquema Nacional de Vacunacion - MINSA Peru](PlanDefinition-MINSAEsquemaVacunacion.md)
* **Actions: **: **Version: **
  * : 1.0.0
* **Actions: **: **Title: **
  * : Esquema Nacional de Vacunacion - MINSA Peru
* **Actions: **: **Date: **
  * : 2026-03-16 12:33:41-0400
* **Actions: **: **Publisher: **
  * : MINSA - Ministerio de Salud del Perú
* **Actions: **: **Description: **
  * : Esquema Nacional de Vacunacion del Peru para ninos desde el nacimiento hasta los 13 anos.
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Jurisdiction: **
  * : PE



## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "MINSAEsquemaVacunacion",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
    "valueCode" : "computable"
  }],
  "url" : "http://minsa.gob.pe/immunizations/PlanDefinition/MINSAEsquemaVacunacion",
  "version" : "1.0.0",
  "name" : "MINSAEsquemaVacunacion",
  "title" : "Esquema Nacional de Vacunacion - MINSA Peru",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "eca-rule"
    }]
  },
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
  "description" : "Esquema Nacional de Vacunacion del Peru para ninos desde el nacimiento hasta los 13 anos.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PE",
      "display" : "Peru"
    }]
  }],
  "relatedArtifact" : [{
    "type" : "citation",
    "citation" : "NTS N 196-MINSA/DGIESP-2022: Norma Tecnica de Salud que establece el Esquema Nacional de Vacunacion"
  }],
  "action" : [{
    "title" : "Vacunacion BCG",
    "description" : "Administrar vacuna BCG al recien nacido.",
    "documentation" : [{
      "type" : "documentation",
      "label" : "Esquema Nacional de Vacunacion - BCG"
    }],
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente es recien nacido y no tiene registro de vacunacion BCG",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita vacuna BCG"
      }
    }],
    "definitionCanonical" : "http://minsa.gob.pe/immunizations/PlanDefinition/MINSABCGVacunacion"
  },
  {
    "title" : "Vacunacion Hepatitis B - Dosis de nacimiento",
    "description" : "Administrar vacuna contra Hepatitis B al recien nacido dentro de las primeras 24 horas de vida.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente es recien nacido y no tiene registro de dosis de nacimiento de Hepatitis B",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita dosis de nacimiento de Hepatitis B"
      }
    }]
  },
  {
    "title" : "Vacunacion Pentavalente (DPT-HepB-Hib)",
    "description" : "Administrar vacuna Pentavalente a los 2, 4 y 6 meses de edad.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente necesita dosis de vacuna Pentavalente",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita vacuna Pentavalente"
      }
    }],
    "definitionCanonical" : "http://minsa.gob.pe/immunizations/PlanDefinition/MINSAPentavalenteVacunacion"
  },
  {
    "title" : "Vacunacion contra Poliomielitis (IPV/APO)",
    "description" : "Administrar vacunas contra Poliomielitis: IPV a los 2 y 4 meses, APO a los 6 y 18 meses, refuerzo APO a los 4 anos.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente necesita dosis de vacuna contra Poliomielitis",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita vacuna Polio"
      }
    }],
    "definitionCanonical" : "http://minsa.gob.pe/immunizations/PlanDefinition/MINSAPolioVacunacion"
  },
  {
    "title" : "Vacunacion contra Rotavirus",
    "description" : "Administrar vacuna contra Rotavirus a los 2 y 4 meses de edad.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente necesita dosis de vacuna contra Rotavirus",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita vacuna Rotavirus"
      }
    }],
    "definitionCanonical" : "http://minsa.gob.pe/immunizations/PlanDefinition/MINSARotavirusVacunacion"
  },
  {
    "title" : "Vacunacion contra Neumococo",
    "description" : "Administrar vacuna antineumococica conjugada a los 2 y 4 meses, con refuerzo a los 12 meses de edad.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente necesita dosis de vacuna contra Neumococo",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita vacuna Neumococo"
      }
    }],
    "definitionCanonical" : "http://minsa.gob.pe/immunizations/PlanDefinition/MINSANeumococoVacunacion"
  },
  {
    "title" : "Vacunacion contra Influenza",
    "description" : "Administrar vacuna contra Influenza: primera dosis a los 7 meses, segunda dosis a los 8 meses, luego dosis anual hasta los 5 anos.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente necesita dosis de vacuna contra Influenza",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita vacuna Influenza"
      }
    }]
  },
  {
    "title" : "Vacunacion SPR (Sarampion-Paperas-Rubeola)",
    "description" : "Administrar vacuna SPR a los 12 meses con refuerzo a los 18 meses de edad.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente necesita dosis de vacuna SPR",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita vacuna SPR"
      }
    }],
    "definitionCanonical" : "http://minsa.gob.pe/immunizations/PlanDefinition/MINSASPRVacunacion"
  },
  {
    "title" : "Vacunacion Antiamarilica (Fiebre Amarilla)",
    "description" : "Administrar vacuna contra Fiebre Amarilla a los 15 meses de edad.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente necesita vacuna contra Fiebre Amarilla",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita vacuna Antiamarilica"
      }
    }]
  },
  {
    "title" : "Vacunacion DPT - Refuerzos",
    "description" : "Administrar refuerzos de DPT a los 18 meses y 4 anos de edad.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente necesita refuerzo de DPT",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita refuerzo DPT"
      }
    }]
  },
  {
    "title" : "Vacunacion contra VPH (Virus del Papiloma Humano)",
    "description" : "Administrar vacuna contra VPH a ninas de 9 a 13 anos, esquema de 2 dosis con intervalo de 6 meses.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "La paciente es nina de 9 a 13 anos y necesita vacuna VPH",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita vacuna VPH"
      }
    }],
    "definitionCanonical" : "http://minsa.gob.pe/immunizations/PlanDefinition/MINSAHPVVacunacion"
  }]
}

```

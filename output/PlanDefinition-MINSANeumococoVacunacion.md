# MINSA - Vacunacion contra Neumococo (PCV) - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MINSA - Vacunacion contra Neumococo (PCV)**

## PlanDefinition: MINSA - Vacunacion contra Neumococo (PCV) 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/PlanDefinition/MINSANeumococoVacunacion | *Version*:1.0.0 |
| Active as of 2026-03-16 | *Computable Name*:MINSANeumococoVacunacion |

 
Logica de decision para la vacunacion antineumococica conjugada segun el Esquema Nacional de Vacunacion del Peru. Esquema 2+1: dos dosis primarias a los 2 y 4 meses de edad, con una dosis de refuerzo a los 12 meses. 

* **Actions: **: **Url: **
  * : [MINSA - Vacunacion contra Neumococo (PCV)](PlanDefinition-MINSANeumococoVacunacion.md)
* **Actions: **: **Version: **
  * : 1.0.0
* **Actions: **: **Title: **
  * : MINSA - Vacunacion contra Neumococo (PCV)
* **Actions: **: **Date: **
  * : 2026-03-16 12:33:41-0400
* **Actions: **: **Publisher: **
  * : MINSA - Ministerio de Salud del Perú
* **Actions: **: **Description: **
  * : Logica de decision para la vacunacion antineumococica conjugada segun el Esquema Nacional de Vacunacion del Peru. Esquema 2+1: dos dosis primarias a los 2 y 4 meses de edad, con una dosis de refuerzo a los 12 meses.
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Jurisdiction: **
  * : PE



## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "MINSANeumococoVacunacion",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
    "valueCode" : "computable"
  }],
  "url" : "http://minsa.gob.pe/immunizations/PlanDefinition/MINSANeumococoVacunacion",
  "version" : "1.0.0",
  "name" : "MINSANeumococoVacunacion",
  "title" : "MINSA - Vacunacion contra Neumococo (PCV)",
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
  "description" : "Logica de decision para la vacunacion antineumococica conjugada segun el Esquema Nacional de\nVacunacion del Peru. Esquema 2+1: dos dosis primarias a los 2 y 4 meses de edad, con una\ndosis de refuerzo a los 12 meses.",
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
  },
  {
    "type" : "depends-on",
    "display" : "WHO SMART Guidelines - Pneumococcal 2 Doses with Booster Decision Table",
    "resource" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose"
  }],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "La vacuna antineumococica conjugada protege contra la enfermedad\n      invasiva por Streptococcus pneumoniae (meningitis, neumonia, sepsis). Peru utiliza\n      el esquema 2+1 recomendado por la OMS: 2 dosis primarias con 1 dosis de refuerzo."
    }],
    "title" : "Determinar si el nino necesita la 1ra dosis de Neumococo",
    "description" : "Evaluar si el nino de 2 meses cumple las condiciones para recibir la primera\n    dosis de vacuna antineumococica conjugada segun el protocolo nacional.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente tiene 2 meses o mas y no ha recibido la 1ra dosis de Neumococo",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita 1ra dosis de Neumococo"
      }
    }],
    "dynamicValue" : [{
      "path" : "status",
      "expression" : {
        "language" : "text/cql-expression",
        "expression" : "'draft'"
      }
    },
    {
      "path" : "intent",
      "expression" : {
        "language" : "text/cql-expression",
        "expression" : "'proposal'"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "Segunda dosis primaria de la vacuna antineumococica conjugada a los\n      4 meses de edad. Intervalo minimo de 8 semanas desde la primera dosis."
    }],
    "title" : "Determinar si el nino necesita la 2da dosis de Neumococo",
    "description" : "Evaluar si el nino de 4 meses cumple las condiciones para recibir la segunda\n    dosis de vacuna antineumococica conjugada segun el protocolo nacional.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente tiene 4 meses o mas, ha recibido la 1ra dosis y no ha recibido la 2da dosis de Neumococo",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita 2da dosis de Neumococo"
      }
    }],
    "dynamicValue" : [{
      "path" : "status",
      "expression" : {
        "language" : "text/cql-expression",
        "expression" : "'draft'"
      }
    },
    {
      "path" : "intent",
      "expression" : {
        "language" : "text/cql-expression",
        "expression" : "'proposal'"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "Dosis de refuerzo de la vacuna antineumococica conjugada a los 12 meses\n      de edad. Esta dosis es esencial para mantener la proteccion a largo plazo. Los lactantes\n      con VIH y prematuros pueden beneficiarse especialmente de esta dosis de refuerzo."
    }],
    "title" : "Determinar si el nino necesita la dosis de refuerzo de Neumococo",
    "description" : "Evaluar si el nino de 12 meses cumple las condiciones para recibir la dosis\n    de refuerzo de vacuna antineumococica conjugada segun el protocolo nacional.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente tiene 12 meses o mas, ha recibido 2 dosis primarias y no ha recibido el refuerzo de Neumococo",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita refuerzo de Neumococo"
      }
    }],
    "dynamicValue" : [{
      "path" : "status",
      "expression" : {
        "language" : "text/cql-expression",
        "expression" : "'draft'"
      }
    },
    {
      "path" : "intent",
      "expression" : {
        "language" : "text/cql-expression",
        "expression" : "'proposal'"
      }
    }]
  }]
}

```

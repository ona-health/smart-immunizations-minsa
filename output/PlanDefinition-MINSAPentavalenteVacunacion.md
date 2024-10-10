# MINSA - Vacunacion Pentavalente (DPT-HepB-Hib) - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MINSA - Vacunacion Pentavalente (DPT-HepB-Hib)**

## PlanDefinition: MINSA - Vacunacion Pentavalente (DPT-HepB-Hib) 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/PlanDefinition/MINSAPentavalenteVacunacion | *Version*:1.0.0 |
| Active as of 2026-03-16 | *Computable Name*:MINSAPentavalenteVacunacion |

 
Logica de decision para la vacunacion Pentavalente segun el Esquema Nacional de Vacunacion del Peru. La vacuna Pentavalente (DPT-HepB-Hib) se administra en 3 dosis a los 2, 4 y 6 meses de edad, con un intervalo minimo de 8 semanas entre dosis. 

* **Actions: **: **Url: **
  * : [MINSA - Vacunacion Pentavalente (DPT-HepB-Hib)](PlanDefinition-MINSAPentavalenteVacunacion.md)
* **Actions: **: **Version: **
  * : 1.0.0
* **Actions: **: **Title: **
  * : MINSA - Vacunacion Pentavalente (DPT-HepB-Hib)
* **Actions: **: **Date: **
  * : 2026-03-16 12:33:41-0400
* **Actions: **: **Publisher: **
  * : MINSA - Ministerio de Salud del Perú
* **Actions: **: **Description: **
  * : Logica de decision para la vacunacion Pentavalente segun el Esquema Nacional de Vacunacion del Peru. La vacuna Pentavalente (DPT-HepB-Hib) se administra en 3 dosis a los 2, 4 y 6 meses de edad, con un intervalo minimo de 8 semanas entre dosis.
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Jurisdiction: **
  * : PE



## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "MINSAPentavalenteVacunacion",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
    "valueCode" : "computable"
  }],
  "url" : "http://minsa.gob.pe/immunizations/PlanDefinition/MINSAPentavalenteVacunacion",
  "version" : "1.0.0",
  "name" : "MINSAPentavalenteVacunacion",
  "title" : "MINSA - Vacunacion Pentavalente (DPT-HepB-Hib)",
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
  "description" : "Logica de decision para la vacunacion Pentavalente segun el Esquema Nacional de Vacunacion del Peru.\nLa vacuna Pentavalente (DPT-HepB-Hib) se administra en 3 dosis a los 2, 4 y 6 meses de edad,\ncon un intervalo minimo de 8 semanas entre dosis.",
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
    "display" : "WHO SMART Guidelines - DTP Decision Table (On Time Start)",
    "resource" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTDTPOnTimeStart"
  }],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "La vacuna Pentavalente combina la proteccion contra difteria, tetanos,\n      tos ferina, hepatitis B y Haemophilus influenzae tipo b. Se inicia a los 2 meses de edad\n      como parte del esquema primario de vacunacion infantil."
    }],
    "title" : "Determinar si el nino necesita la 1ra dosis de Pentavalente",
    "description" : "Evaluar si el nino de 2 meses cumple las condiciones para recibir la primera\n    dosis de vacuna Pentavalente segun el protocolo nacional.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente tiene 2 meses o mas y no ha recibido la 1ra dosis de Pentavalente",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita 1ra dosis de Pentavalente"
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
      "valueMarkdown" : "Segunda dosis del esquema primario de Pentavalente. Se administra a los\n      4 meses de edad, con un intervalo minimo de 8 semanas desde la primera dosis."
    }],
    "title" : "Determinar si el nino necesita la 2da dosis de Pentavalente",
    "description" : "Evaluar si el nino de 4 meses cumple las condiciones para recibir la segunda\n    dosis de vacuna Pentavalente segun el protocolo nacional.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente tiene 4 meses o mas, ha recibido la 1ra dosis y no ha recibido la 2da dosis de Pentavalente",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita 2da dosis de Pentavalente"
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
      "valueMarkdown" : "Tercera dosis del esquema primario de Pentavalente. Se administra a los\n      6 meses de edad, completando la serie primaria. El intervalo minimo desde la segunda\n      dosis es de 8 semanas."
    }],
    "title" : "Determinar si el nino necesita la 3ra dosis de Pentavalente",
    "description" : "Evaluar si el nino de 6 meses cumple las condiciones para recibir la tercera\n    dosis de vacuna Pentavalente segun el protocolo nacional.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente tiene 6 meses o mas, ha recibido la 2da dosis y no ha recibido la 3ra dosis de Pentavalente",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita 3ra dosis de Pentavalente"
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

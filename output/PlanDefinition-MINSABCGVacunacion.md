# MINSA - Vacunacion BCG - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MINSA - Vacunacion BCG**

## PlanDefinition: MINSA - Vacunacion BCG 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/PlanDefinition/MINSABCGVacunacion | *Version*:1.0.0 |
| Active as of 2026-03-16 | *Computable Name*:MINSABCGVacunacion |

 
Logica de decision para la vacunacion BCG segun el Esquema Nacional de Vacunacion del Peru. La vacuna BCG se administra en dosis unica al recien nacido, preferiblemente dentro de las primeras 24 horas de vida. 

* **Actions: **: **Url: **
  * : [MINSA - Vacunacion BCG](PlanDefinition-MINSABCGVacunacion.md)
* **Actions: **: **Version: **
  * : 1.0.0
* **Actions: **: **Title: **
  * : MINSA - Vacunacion BCG
* **Actions: **: **Date: **
  * : 2026-03-16 12:33:41-0400
* **Actions: **: **Publisher: **
  * : MINSA - Ministerio de Salud del Perú
* **Actions: **: **Description: **
  * : Logica de decision para la vacunacion BCG segun el Esquema Nacional de Vacunacion del Peru. La vacuna BCG se administra en dosis unica al recien nacido, preferiblemente dentro de las primeras 24 horas de vida.
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Jurisdiction: **
  * : PE



## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "MINSABCGVacunacion",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
    "valueCode" : "computable"
  }],
  "url" : "http://minsa.gob.pe/immunizations/PlanDefinition/MINSABCGVacunacion",
  "version" : "1.0.0",
  "name" : "MINSABCGVacunacion",
  "title" : "MINSA - Vacunacion BCG",
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
  "description" : "Logica de decision para la vacunacion BCG segun el Esquema Nacional de Vacunacion del Peru.\nLa vacuna BCG se administra en dosis unica al recien nacido, preferiblemente dentro de las\nprimeras 24 horas de vida.",
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
    "display" : "WHO SMART Guidelines - BCG Decision Table",
    "resource" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTBCG"
  }],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "La vacuna BCG protege contra las formas graves de tuberculosis\n      (meningitis tuberculosa y tuberculosis miliar). Se administra en dosis unica al recien\n      nacido. En recien nacidos de madres con VIH, se debe evaluar el estado clinico antes\n      de la vacunacion."
    }],
    "title" : "Determinar si el recien nacido necesita vacunacion BCG",
    "description" : "Evaluar si el recien nacido cumple las condiciones para recibir la vacuna BCG\n    segun el protocolo nacional de inmunizaciones.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente es recien nacido y no ha recibido vacuna BCG",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita vacuna BCG"
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

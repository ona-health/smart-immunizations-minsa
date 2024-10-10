# MINSA - Vacunacion contra VPH (Virus del Papiloma Humano) - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MINSA - Vacunacion contra VPH (Virus del Papiloma Humano)**

## PlanDefinition: MINSA - Vacunacion contra VPH (Virus del Papiloma Humano) 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/PlanDefinition/MINSAHPVVacunacion | *Version*:1.0.0 |
| Active as of 2026-03-16 | *Computable Name*:MINSAHPVVacunacion |

 
Logica de decision para la vacunacion contra el Virus del Papiloma Humano (VPH) segun el Esquema Nacional de Vacunacion del Peru. Se administran 2 dosis a ninas de 9 a 13 anos de edad, con un intervalo de 6 meses entre dosis. 

* **Actions: **: **Url: **
  * : [MINSA - Vacunacion contra VPH (Virus del Papiloma Humano)](PlanDefinition-MINSAHPVVacunacion.md)
* **Actions: **: **Version: **
  * : 1.0.0
* **Actions: **: **Title: **
  * : MINSA - Vacunacion contra VPH (Virus del Papiloma Humano)
* **Actions: **: **Date: **
  * : 2026-03-16 12:33:41-0400
* **Actions: **: **Publisher: **
  * : MINSA - Ministerio de Salud del Perú
* **Actions: **: **Description: **
  * : Logica de decision para la vacunacion contra el Virus del Papiloma Humano (VPH) segun el Esquema Nacional de Vacunacion del Peru. Se administran 2 dosis a ninas de 9 a 13 anos de edad, con un intervalo de 6 meses entre dosis.
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Jurisdiction: **
  * : PE



## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "MINSAHPVVacunacion",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
    "valueCode" : "computable"
  }],
  "url" : "http://minsa.gob.pe/immunizations/PlanDefinition/MINSAHPVVacunacion",
  "version" : "1.0.0",
  "name" : "MINSAHPVVacunacion",
  "title" : "MINSA - Vacunacion contra VPH (Virus del Papiloma Humano)",
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
  "description" : "Logica de decision para la vacunacion contra el Virus del Papiloma Humano (VPH) segun el\nEsquema Nacional de Vacunacion del Peru. Se administran 2 dosis a ninas de 9 a 13 anos\nde edad, con un intervalo de 6 meses entre dosis.",
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
    "display" : "WHO SMART Guidelines - HPV 2 Doses Decision Table",
    "resource" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHPV2Doses"
  }],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "La vacuna contra el VPH previene la infeccion por los tipos de VPH\n      que causan cancer de cuello uterino. En Peru se aplica a ninas de 9 a 13 anos con un\n      esquema de 2 dosis. La vacunacion antes del inicio de la actividad sexual proporciona\n      la maxima proteccion."
    }],
    "title" : "Determinar si la paciente necesita la 1ra dosis de VPH",
    "description" : "Evaluar si la paciente (sexo femenino, 9-13 anos) cumple las condiciones\n    para recibir la primera dosis de vacuna contra VPH segun el protocolo nacional.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "La paciente es de sexo femenino, tiene entre 9 y 13 anos, y no ha recibido la 1ra dosis de VPH",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita 1ra dosis de VPH"
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
      "valueMarkdown" : "Segunda dosis de VPH con un intervalo minimo de 6 meses desde la\n      primera dosis. Con 2 dosis se logra una respuesta inmune robusta y duradera en\n      la poblacion objetivo de 9 a 13 anos."
    }],
    "title" : "Determinar si la paciente necesita la 2da dosis de VPH",
    "description" : "Evaluar si la paciente cumple las condiciones para recibir la segunda dosis\n    de vacuna contra VPH, con al menos 6 meses desde la primera dosis.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "La paciente ha recibido la 1ra dosis de VPH, han pasado al menos 6 meses, y no ha recibido la 2da dosis",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita 2da dosis de VPH"
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

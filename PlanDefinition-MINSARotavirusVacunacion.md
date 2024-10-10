# MINSA - Vacunacion contra Rotavirus - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MINSA - Vacunacion contra Rotavirus**

## PlanDefinition: MINSA - Vacunacion contra Rotavirus 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/PlanDefinition/MINSARotavirusVacunacion | *Version*:1.0.0 |
| Active as of 2026-03-16 | *Computable Name*:MINSARotavirusVacunacion |

 
Logica de decision para la vacunacion contra Rotavirus segun el Esquema Nacional de Vacunacion del Peru. Se administran 2 dosis a los 2 y 4 meses de edad. La primera dosis no debe administrarse despues de las 15 semanas de vida. 

* **Actions: **: **Url: **
  * : [MINSA - Vacunacion contra Rotavirus](PlanDefinition-MINSARotavirusVacunacion.md)
* **Actions: **: **Version: **
  * : 1.0.0
* **Actions: **: **Title: **
  * : MINSA - Vacunacion contra Rotavirus
* **Actions: **: **Date: **
  * : 2026-03-16 12:33:41-0400
* **Actions: **: **Publisher: **
  * : MINSA - Ministerio de Salud del Perú
* **Actions: **: **Description: **
  * : Logica de decision para la vacunacion contra Rotavirus segun el Esquema Nacional de Vacunacion del Peru. Se administran 2 dosis a los 2 y 4 meses de edad. La primera dosis no debe administrarse despues de las 15 semanas de vida.
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Jurisdiction: **
  * : PE



## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "MINSARotavirusVacunacion",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
    "valueCode" : "computable"
  }],
  "url" : "http://minsa.gob.pe/immunizations/PlanDefinition/MINSARotavirusVacunacion",
  "version" : "1.0.0",
  "name" : "MINSARotavirusVacunacion",
  "title" : "MINSA - Vacunacion contra Rotavirus",
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
  "description" : "Logica de decision para la vacunacion contra Rotavirus segun el Esquema Nacional de Vacunacion\ndel Peru. Se administran 2 dosis a los 2 y 4 meses de edad. La primera dosis no debe\nadministrarse despues de las 15 semanas de vida.",
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
    "display" : "WHO SMART Guidelines - Rotavirus Decision Table",
    "resource" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTRotavirus"
  }],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "La vacuna contra Rotavirus previene la diarrea grave por rotavirus en\n      lactantes. La primera dosis se administra a los 2 meses de edad (edad minima 6 semanas).\n      La primera dosis no debe administrarse despues de las 15 semanas de vida. La serie debe\n      completarse con el mismo producto siempre que sea posible."
    }],
    "title" : "Determinar si el nino necesita la 1ra dosis de Rotavirus",
    "description" : "Evaluar si el nino de 2 meses cumple las condiciones para recibir la primera\n    dosis de vacuna contra Rotavirus segun el protocolo nacional.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente tiene 2 meses o mas, no supera las 15 semanas de vida, y no ha recibido la 1ra dosis de Rotavirus",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita 1ra dosis de Rotavirus"
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
      "valueMarkdown" : "Segunda dosis de Rotavirus a los 4 meses de edad, con un intervalo\n      minimo de 4 semanas desde la primera dosis. Esta dosis completa el esquema de Rotavirus."
    }],
    "title" : "Determinar si el nino necesita la 2da dosis de Rotavirus",
    "description" : "Evaluar si el nino de 4 meses cumple las condiciones para recibir la segunda\n    dosis de vacuna contra Rotavirus segun el protocolo nacional.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente tiene 4 meses o mas, ha recibido la 1ra dosis y no ha recibido la 2da dosis de Rotavirus",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita 2da dosis de Rotavirus"
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

# MINSA - Vacunacion SPR (Sarampion-Paperas-Rubeola) - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MINSA - Vacunacion SPR (Sarampion-Paperas-Rubeola)**

## PlanDefinition: MINSA - Vacunacion SPR (Sarampion-Paperas-Rubeola) 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/PlanDefinition/MINSASPRVacunacion | *Version*:1.0.0 |
| Active as of 2026-03-16 | *Computable Name*:MINSASPRVacunacion |

 
Logica de decision para la vacunacion SPR (Sarampion, Paperas, Rubeola) segun el Esquema Nacional de Vacunacion del Peru. Se administra la primera dosis a los 12 meses de edad y una dosis de refuerzo a los 18 meses. 

* **Actions: **: **Url: **
  * : [MINSA - Vacunacion SPR (Sarampion-Paperas-Rubeola)](PlanDefinition-MINSASPRVacunacion.md)
* **Actions: **: **Version: **
  * : 1.0.0
* **Actions: **: **Title: **
  * : MINSA - Vacunacion SPR (Sarampion-Paperas-Rubeola)
* **Actions: **: **Date: **
  * : 2026-03-16 12:33:41-0400
* **Actions: **: **Publisher: **
  * : MINSA - Ministerio de Salud del Perú
* **Actions: **: **Description: **
  * : Logica de decision para la vacunacion SPR (Sarampion, Paperas, Rubeola) segun el Esquema Nacional de Vacunacion del Peru. Se administra la primera dosis a los 12 meses de edad y una dosis de refuerzo a los 18 meses.
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Jurisdiction: **
  * : PE



## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "MINSASPRVacunacion",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
    "valueCode" : "computable"
  }],
  "url" : "http://minsa.gob.pe/immunizations/PlanDefinition/MINSASPRVacunacion",
  "version" : "1.0.0",
  "name" : "MINSASPRVacunacion",
  "title" : "MINSA - Vacunacion SPR (Sarampion-Paperas-Rubeola)",
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
  "description" : "Logica de decision para la vacunacion SPR (Sarampion, Paperas, Rubeola) segun el Esquema\nNacional de Vacunacion del Peru. Se administra la primera dosis a los 12 meses de edad\ny una dosis de refuerzo a los 18 meses.",
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
    "display" : "WHO SMART Guidelines - Measles Low Transmission Decision Table",
    "resource" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTMeaslesLowTransmission"
  }],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "La vacuna SPR (triple virica) protege contra sarampion, paperas y\n      rubeola. La primera dosis se administra a los 12 meses de edad, cuando los anticuerpos\n      maternos han disminuido suficientemente para permitir una respuesta inmune adecuada."
    }],
    "title" : "Determinar si el nino necesita la 1ra dosis de SPR",
    "description" : "Evaluar si el nino de 12 meses cumple las condiciones para recibir la primera\n    dosis de vacuna SPR segun el protocolo nacional de inmunizaciones.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente tiene 12 meses o mas y no ha recibido la 1ra dosis de SPR",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita 1ra dosis de SPR"
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
      "valueMarkdown" : "La dosis de refuerzo de SPR a los 18 meses asegura la proteccion a\n      largo plazo. Aproximadamente el 5% de los ninos no responden a la primera dosis,\n      por lo que la segunda dosis garantiza la inmunidad de la poblacion."
    }],
    "title" : "Determinar si el nino necesita la dosis de refuerzo de SPR",
    "description" : "Evaluar si el nino de 18 meses cumple las condiciones para recibir la dosis\n    de refuerzo de vacuna SPR segun el protocolo nacional de inmunizaciones.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente tiene 18 meses o mas, ha recibido la 1ra dosis y no ha recibido el refuerzo de SPR",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita refuerzo de SPR"
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

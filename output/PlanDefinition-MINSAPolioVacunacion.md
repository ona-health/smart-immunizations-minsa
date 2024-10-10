# MINSA - Vacunacion contra Poliomielitis (IPV/APO) - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MINSA - Vacunacion contra Poliomielitis (IPV/APO)**

## PlanDefinition: MINSA - Vacunacion contra Poliomielitis (IPV/APO) 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/PlanDefinition/MINSAPolioVacunacion | *Version*:1.0.0 |
| Active as of 2026-03-16 | *Computable Name*:MINSAPolioVacunacion |

 
Logica de decision para la vacunacion contra Poliomielitis segun el Esquema Nacional de Vacunacion del Peru. Esquema secuencial: IPV (inyectable) a los 2 y 4 meses, APO (oral) a los 6 y 18 meses, y refuerzo con APO a los 4 anos de edad. 

* **Actions: **: **Url: **
  * : [MINSA - Vacunacion contra Poliomielitis (IPV/APO)](PlanDefinition-MINSAPolioVacunacion.md)
* **Actions: **: **Version: **
  * : 1.0.0
* **Actions: **: **Title: **
  * : MINSA - Vacunacion contra Poliomielitis (IPV/APO)
* **Actions: **: **Date: **
  * : 2026-03-16 12:33:41-0400
* **Actions: **: **Publisher: **
  * : MINSA - Ministerio de Salud del Perú
* **Actions: **: **Description: **
  * : Logica de decision para la vacunacion contra Poliomielitis segun el Esquema Nacional de Vacunacion del Peru. Esquema secuencial: IPV (inyectable) a los 2 y 4 meses, APO (oral) a los 6 y 18 meses, y refuerzo con APO a los 4 anos de edad.
* **Actions: **: **Knowledge Capability: **
  * : computable
* **Actions: **: **Jurisdiction: **
  * : PE



## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "MINSAPolioVacunacion",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
    "valueCode" : "computable"
  }],
  "url" : "http://minsa.gob.pe/immunizations/PlanDefinition/MINSAPolioVacunacion",
  "version" : "1.0.0",
  "name" : "MINSAPolioVacunacion",
  "title" : "MINSA - Vacunacion contra Poliomielitis (IPV/APO)",
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
  "description" : "Logica de decision para la vacunacion contra Poliomielitis segun el Esquema Nacional de Vacunacion\ndel Peru. Esquema secuencial: IPV (inyectable) a los 2 y 4 meses, APO (oral) a los 6 y 18 meses,\ny refuerzo con APO a los 4 anos de edad.",
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
    "display" : "WHO SMART Guidelines - Polio bOPV plus IPV Decision Table",
    "resource" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTPolioBOPVPlusIPV"
  }],
  "action" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
      "valueMarkdown" : "Peru utiliza un esquema secuencial de vacunacion contra Poliomielitis.\n      Las dos primeras dosis se administran con vacuna inactivada (IPV) por via intramuscular\n      para minimizar el riesgo de poliomielitis asociada a la vacuna."
    }],
    "title" : "Determinar si el nino necesita la 1ra dosis de IPV",
    "description" : "Evaluar si el nino de 2 meses cumple las condiciones para recibir la primera\n    dosis de vacuna IPV (inactivada) contra Poliomielitis.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente tiene 2 meses o mas y no ha recibido la 1ra dosis de IPV",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita 1ra dosis de IPV"
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
      "valueMarkdown" : "Segunda dosis de IPV a los 4 meses. Con esta dosis se completa la serie\n      de vacuna inactivada antes de continuar con APO oral."
    }],
    "title" : "Determinar si el nino necesita la 2da dosis de IPV",
    "description" : "Evaluar si el nino de 4 meses cumple las condiciones para recibir la segunda\n    dosis de vacuna IPV (inactivada) contra Poliomielitis.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente tiene 4 meses o mas, ha recibido la 1ra dosis de IPV y no ha recibido la 2da dosis",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita 2da dosis de IPV"
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
      "valueMarkdown" : "A partir de la tercera dosis se utiliza la vacuna oral (APO/bOPV)\n      que contribuye a la inmunidad de mucosas y a la proteccion comunitaria."
    }],
    "title" : "Determinar si el nino necesita la 3ra dosis de Polio (APO)",
    "description" : "Evaluar si el nino de 6 meses cumple las condiciones para recibir la tercera\n    dosis de vacuna contra Poliomielitis (APO oral).",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente tiene 6 meses o mas, ha recibido 2 dosis de IPV y no ha recibido la 3ra dosis (APO)",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita 3ra dosis de Polio APO"
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
      "valueMarkdown" : "Primer refuerzo con APO oral a los 18 meses de edad para\n      fortalecer la inmunidad contra Poliomielitis."
    }],
    "title" : "Determinar si el nino necesita el 1er refuerzo de Polio (APO)",
    "description" : "Evaluar si el nino de 18 meses cumple las condiciones para recibir el primer\n    refuerzo de vacuna APO contra Poliomielitis.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente tiene 18 meses o mas, ha completado la serie primaria y no ha recibido el 1er refuerzo",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita 1er refuerzo de Polio APO"
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
      "valueMarkdown" : "Segundo refuerzo con APO oral a los 4 anos de edad, completando\n      el esquema de vacunacion contra Poliomielitis."
    }],
    "title" : "Determinar si el nino necesita el 2do refuerzo de Polio (APO)",
    "description" : "Evaluar si el nino de 4 anos cumple las condiciones para recibir el segundo\n    refuerzo de vacuna APO contra Poliomielitis.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "description" : "El paciente tiene 4 anos o mas, ha recibido el 1er refuerzo y no ha recibido el 2do refuerzo",
        "language" : "text/cql-identifier",
        "expression" : "Paciente necesita 2do refuerzo de Polio APO"
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

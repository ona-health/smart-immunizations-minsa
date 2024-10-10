# Inmunización MINSA Perú - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Inmunización MINSA Perú**

## Resource Profile: Inmunización MINSA Perú 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/StructureDefinition/MINSA.Immunization | *Version*:1.0.0 |
| Draft as of 2026-03-16 | *Computable Name*:MINSAImmunization |

 
Perfil de Inmunización para el programa de inmunizaciones del Ministerio de Salud del Perú (MINSA). Extiende el perfil IMMZImmunization de las Directrices SMART de la OMS con el esquema nacional de vacunación. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/minsa.gob.pe.immunizations|current/StructureDefinition/MINSA.Immunization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MINSA.Immunization.csv), [Excel](StructureDefinition-MINSA.Immunization.xlsx), [Schematron](StructureDefinition-MINSA.Immunization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MINSA.Immunization",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "metadata"
      }]
    }
  }],
  "url" : "http://minsa.gob.pe/immunizations/StructureDefinition/MINSA.Immunization",
  "version" : "1.0.0",
  "name" : "MINSAImmunization",
  "title" : "Inmunización MINSA Perú",
  "status" : "draft",
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
  "description" : "Perfil de Inmunización para el programa de inmunizaciones del Ministerio de Salud del Perú (MINSA). Extiende el perfil IMMZImmunization de las Directrices SMART de la OMS con el esquema nacional de vacunación.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PE",
      "display" : "Peru"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Immunization",
  "baseDefinition" : "http://smart.who.int/immunizations/StructureDefinition/IMMZ.Immunization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Immunization",
      "path" : "Immunization"
    },
    {
      "id" : "Immunization.vaccineCode",
      "path" : "Immunization.vaccineCode",
      "short" : "Código de vacuna según el esquema nacional de vacunación",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://minsa.gob.pe/immunizations/ValueSet/MINSAVaccineVS"
      }
    },
    {
      "id" : "Immunization.performer",
      "path" : "Immunization.performer",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "actor"
        }],
        "rules" : "open"
      },
      "short" : "Profesional de salud y establecimiento que administró la vacuna",
      "min" : 1
    },
    {
      "id" : "Immunization.performer.actor",
      "path" : "Immunization.performer.actor",
      "short" : "Referencia al profesional o establecimiento de salud"
    },
    {
      "id" : "Immunization.performer:establecimiento",
      "path" : "Immunization.performer",
      "sliceName" : "establecimiento",
      "short" : "Establecimiento de salud donde se administró la vacuna",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.performer:establecimiento.actor",
      "path" : "Immunization.performer.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    }]
  }
}

```

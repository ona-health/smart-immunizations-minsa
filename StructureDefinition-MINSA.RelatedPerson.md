# Cuidador MINSA Perú - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cuidador MINSA Perú**

## Resource Profile: Cuidador MINSA Perú 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/StructureDefinition/MINSA.RelatedPerson | *Version*:1.0.0 |
| Draft as of 2026-03-16 | *Computable Name*:MINSARelatedPerson |

 
Perfil de Persona Relacionada (cuidador) para el programa de inmunizaciones del Ministerio de Salud del Perú (MINSA). Extiende el perfil IMMZCaregiver de las Directrices SMART de la OMS con identificación peruana. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/minsa.gob.pe.immunizations|current/StructureDefinition/MINSA.RelatedPerson)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MINSA.RelatedPerson.csv), [Excel](StructureDefinition-MINSA.RelatedPerson.xlsx), [Schematron](StructureDefinition-MINSA.RelatedPerson.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MINSA.RelatedPerson",
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
  "url" : "http://minsa.gob.pe/immunizations/StructureDefinition/MINSA.RelatedPerson",
  "version" : "1.0.0",
  "name" : "MINSARelatedPerson",
  "title" : "Cuidador MINSA Perú",
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
  "description" : "Perfil de Persona Relacionada (cuidador) para el programa de inmunizaciones del Ministerio de Salud del Perú (MINSA). Extiende el perfil IMMZCaregiver de las Directrices SMART de la OMS con identificación peruana.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PE",
      "display" : "Peru"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "http://smart.who.int/immunizations/StructureDefinition/IMMZ.Caregiver",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson"
    },
    {
      "id" : "RelatedPerson.identifier",
      "path" : "RelatedPerson.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "RelatedPerson.identifier:dni",
      "path" : "RelatedPerson.identifier",
      "sliceName" : "dni",
      "short" : "Documento Nacional de Identidad (DNI) del cuidador",
      "definition" : "Número de Documento Nacional de Identidad del cuidador, emitido por RENIEC.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.identifier:dni.system",
      "path" : "RelatedPerson.identifier.system",
      "min" : 1,
      "patternUri" : "http://minsa.gob.pe/sid/dni"
    },
    {
      "id" : "RelatedPerson.identifier:dni.value",
      "path" : "RelatedPerson.identifier.value",
      "min" : 1
    },
    {
      "id" : "RelatedPerson.relationship",
      "path" : "RelatedPerson.relationship",
      "short" : "Relación de parentesco con el paciente",
      "definition" : "Tipo de relación del cuidador con el paciente (padre, madre, tutor, etc.).",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype"
      }
    }]
  }
}

```

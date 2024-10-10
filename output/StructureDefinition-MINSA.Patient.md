# Paciente MINSA Perú - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente MINSA Perú**

## Resource Profile: Paciente MINSA Perú 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/StructureDefinition/MINSA.Patient | *Version*:1.0.0 |
| Draft as of 2026-03-16 | *Computable Name*:MINSAPatient |

 
Perfil de Paciente para el programa de inmunizaciones del Ministerio de Salud del Perú (MINSA). Extiende el perfil IMMZPatient de las Directrices SMART de la OMS con identificadores y divisiones administrativas peruanas. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/minsa.gob.pe.immunizations|current/StructureDefinition/MINSA.Patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MINSA.Patient.csv), [Excel](StructureDefinition-MINSA.Patient.xlsx), [Schematron](StructureDefinition-MINSA.Patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MINSA.Patient",
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
  "url" : "http://minsa.gob.pe/immunizations/StructureDefinition/MINSA.Patient",
  "version" : "1.0.0",
  "name" : "MINSAPatient",
  "title" : "Paciente MINSA Perú",
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
  "description" : "Perfil de Paciente para el programa de inmunizaciones del Ministerio de Salud del Perú (MINSA). Extiende el perfil IMMZPatient de las Directrices SMART de la OMS con identificadores y divisiones administrativas peruanas.",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
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
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://smart.who.int/immunizations/StructureDefinition/IMMZ.Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.identifier:dni",
      "path" : "Patient.identifier",
      "sliceName" : "dni",
      "short" : "Documento Nacional de Identidad (DNI)",
      "definition" : "Número de Documento Nacional de Identidad emitido por RENIEC.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:dni.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "patternUri" : "http://minsa.gob.pe/sid/dni"
    },
    {
      "id" : "Patient.identifier:sis",
      "path" : "Patient.identifier",
      "sliceName" : "sis",
      "short" : "Seguro Integral de Salud (SIS)",
      "definition" : "Número de afiliación al Seguro Integral de Salud.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:sis.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "patternUri" : "http://minsa.gob.pe/sid/sis"
    },
    {
      "id" : "Patient.address.extension:departamento",
      "path" : "Patient.address.extension",
      "sliceName" : "departamento",
      "short" : "Departamento de residencia",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://minsa.gob.pe/immunizations/StructureDefinition/MINSADepartamento"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.extension:provincia",
      "path" : "Patient.address.extension",
      "sliceName" : "provincia",
      "short" : "Provincia de residencia",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://minsa.gob.pe/immunizations/StructureDefinition/MINSAProvincia"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.extension:distrito",
      "path" : "Patient.address.extension",
      "sliceName" : "distrito",
      "short" : "Distrito de residencia",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://minsa.gob.pe/immunizations/StructureDefinition/MINSADistrito"]
      }],
      "mustSupport" : true
    }]
  }
}

```

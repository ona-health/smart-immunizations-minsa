# Departamento del Perú - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Departamento del Perú**

## Extension: Departamento del Perú 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/StructureDefinition/MINSADepartamento | *Version*:1.0.0 |
| Draft as of 2026-03-16 | *Computable Name*:MINSADepartamento |

División administrativa de primer nivel del Perú (Departamento) donde reside el paciente.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Paciente MINSA Perú](StructureDefinition-MINSA.Patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/minsa.gob.pe.immunizations|current/StructureDefinition/MINSADepartamento)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MINSADepartamento.csv), [Excel](StructureDefinition-MINSADepartamento.xlsx), [Schematron](StructureDefinition-MINSADepartamento.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MINSADepartamento",
  "url" : "http://minsa.gob.pe/immunizations/StructureDefinition/MINSADepartamento",
  "version" : "1.0.0",
  "name" : "MINSADepartamento",
  "title" : "Departamento del Perú",
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
  "description" : "División administrativa de primer nivel del Perú (Departamento) donde reside el paciente.",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Address"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Departamento del Perú",
      "definition" : "División administrativa de primer nivel del Perú (Departamento) donde reside el paciente."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://minsa.gob.pe/immunizations/StructureDefinition/MINSADepartamento"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }]
    }]
  }
}

```

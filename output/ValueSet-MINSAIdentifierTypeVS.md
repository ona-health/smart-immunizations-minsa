# Tipos de Documento de Identidad - MINSA - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipos de Documento de Identidad - MINSA**

## ValueSet: Tipos de Documento de Identidad - MINSA 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/ValueSet/MINSAIdentifierTypeVS | *Version*:1.0.0 |
| Active as of 2026-03-16 | *Computable Name*:MINSAIdentifierTypeVS |

 
Conjunto de valores para los tipos de documento de identidad utilizados en el sistema de inmunizaciones del Perú 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "MINSAIdentifierTypeVS",
  "url" : "http://minsa.gob.pe/immunizations/ValueSet/MINSAIdentifierTypeVS",
  "version" : "1.0.0",
  "name" : "MINSAIdentifierTypeVS",
  "title" : "Tipos de Documento de Identidad - MINSA",
  "status" : "active",
  "date" : "2026-03-16T12:33:41-04:00",
  "publisher" : "MINSA - Ministerio de Salud del Perú",
  "contact" : [{
    "name" : "MINSA - Ministerio de Salud del Perú",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gob.pe/minsa"
    }]
  }],
  "description" : "Conjunto de valores para los tipos de documento de identidad utilizados en el sistema de inmunizaciones del Perú",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PE",
      "display" : "Peru"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://minsa.gob.pe/immunizations/CodeSystem/MINSAIdentifierTypes"
    }]
  }
}

```

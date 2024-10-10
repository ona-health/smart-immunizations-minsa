# Tipos de Documento de Identidad - Perú - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipos de Documento de Identidad - Perú**

## CodeSystem: Tipos de Documento de Identidad - Perú 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/CodeSystem/MINSAIdentifierTypes | *Version*:1.0.0 |
| Active as of 2026-03-16 | *Computable Name*:MINSAIdentifierTypes |

 
Tipos de documento de identidad utilizados en el sistema de salud del Perú 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MINSAIdentifierTypeVS](ValueSet-MINSAIdentifierTypeVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MINSAIdentifierTypes",
  "url" : "http://minsa.gob.pe/immunizations/CodeSystem/MINSAIdentifierTypes",
  "version" : "1.0.0",
  "name" : "MINSAIdentifierTypes",
  "title" : "Tipos de Documento de Identidad - Perú",
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
  "description" : "Tipos de documento de identidad utilizados en el sistema de salud del Perú",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PE",
      "display" : "Peru"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "DNI",
    "display" : "DNI",
    "definition" : "Documento Nacional de Identidad"
  },
  {
    "code" : "CE",
    "display" : "CE",
    "definition" : "Carnet de Extranjería"
  },
  {
    "code" : "SIS",
    "display" : "SIS",
    "definition" : "Código del Seguro Integral de Salud"
  },
  {
    "code" : "CNV",
    "display" : "CNV",
    "definition" : "Certificado de Nacido Vivo"
  },
  {
    "code" : "PTP",
    "display" : "PTP",
    "definition" : "Permiso Temporal de Permanencia"
  }]
}

```

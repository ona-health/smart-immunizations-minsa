# Vacunas del Esquema Nacional de Vacunación MINSA - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vacunas del Esquema Nacional de Vacunación MINSA**

## ValueSet: Vacunas del Esquema Nacional de Vacunación MINSA 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/ValueSet/MINSAVaccineVS | *Version*:1.0.0 |
| Active as of 2026-03-16 | *Computable Name*:MINSAVaccineVS |

 
Conjunto de valores para las vacunas utilizadas en el esquema nacional de vacunación del Perú, incluyendo códigos MINSA y referencias a códigos WHO 

 **References** 

* [Inmunización MINSA Perú](StructureDefinition-MINSA.Immunization.md)

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
  "id" : "MINSAVaccineVS",
  "url" : "http://minsa.gob.pe/immunizations/ValueSet/MINSAVaccineVS",
  "version" : "1.0.0",
  "name" : "MINSAVaccineVS",
  "title" : "Vacunas del Esquema Nacional de Vacunación MINSA",
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
  "description" : "Conjunto de valores para las vacunas utilizadas en el esquema nacional de vacunación del Perú, incluyendo códigos MINSA y referencias a códigos WHO",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PE",
      "display" : "Peru"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://minsa.gob.pe/immunizations/CodeSystem/MINSA",
      "concept" : [{
        "code" : "VAC-BCG",
        "display" : "BCG"
      },
      {
        "code" : "VAC-OPV",
        "display" : "APO - Antipolio Oral"
      },
      {
        "code" : "VAC-IPV",
        "display" : "APV - Antipolio Inactivada"
      },
      {
        "code" : "VAC-PENTA",
        "display" : "Pentavalente"
      },
      {
        "code" : "VAC-ROTA",
        "display" : "Rotavirus"
      },
      {
        "code" : "VAC-PCV",
        "display" : "Neumococo"
      },
      {
        "code" : "VAC-SPR",
        "display" : "SPR"
      },
      {
        "code" : "VAC-HPV",
        "display" : "VPH"
      },
      {
        "code" : "VAC-DT",
        "display" : "DT Pediátrico"
      },
      {
        "code" : "VAC-INF",
        "display" : "Influenza"
      },
      {
        "code" : "VAC-HEPB",
        "display" : "Hepatitis B"
      },
      {
        "code" : "VAC-AMA",
        "display" : "Antiamarílica"
      }]
    },
    {
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.Z",
      "concept" : [{
        "code" : "DE1",
        "display" : "BCG vaccines"
      },
      {
        "code" : "DE30",
        "display" : "Oral polio vaccines"
      },
      {
        "code" : "DE31",
        "display" : "Inactivated polio vaccines"
      },
      {
        "code" : "DE29",
        "display" : "Pentavalent vaccines"
      },
      {
        "code" : "DE16",
        "display" : "Rotavirus vaccines"
      },
      {
        "code" : "DE13",
        "display" : "Pneumococcal vaccines"
      },
      {
        "code" : "DE9",
        "display" : "Measles-containing vaccines"
      },
      {
        "code" : "DE7",
        "display" : "HPV vaccines"
      },
      {
        "code" : "DE33",
        "display" : "Tetanus and diphtheria-containing vaccines (DT)"
      },
      {
        "code" : "DE18",
        "display" : "Seasonal influenza vaccines"
      },
      {
        "code" : "DE6",
        "display" : "Hepatitis B-containing vaccines"
      },
      {
        "code" : "DE23",
        "display" : "Yellow fever vaccines"
      }]
    }]
  }
}

```

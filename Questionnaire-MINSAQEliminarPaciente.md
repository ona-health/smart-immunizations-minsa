# MINSA - Eliminar Paciente - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MINSA - Eliminar Paciente**

## Questionnaire: MINSA - Eliminar Paciente
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MINSAQEliminarPaciente",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"]
  },
  "language" : "es",
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap",
    "valueCanonical" : "http://minsa.gob.pe/immunizations/StructureMap/MINSAEliminarPacienteSM"
  }],
  "url" : "http://minsa.gob.pe/immunizations/Questionnaire/MINSAQEliminarPaciente",
  "version" : "1.0.0",
  "title" : "MINSA - Eliminar Paciente",
  "status" : "draft",
  "subjectType" : ["Patient"],
  "date" : "2024-10-10",
  "publisher" : "MINSA - Ministerio de Salud del Perú",
  "contact" : [{
    "name" : "MINSA - Ministerio de Salud del Perú",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gob.pe/minsa"
    }]
  }],
  "description" : "Cuestionario para eliminar (dar de baja) a un paciente del registro de inmunizaciones. Se utiliza cuando el paciente se ha mudado, ha fallecido, tiene registro duplicado u otra razón.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PE",
      "display" : "Peru"
    }]
  }],
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/questionnaire-item-control",
          "code" : "drop-down"
        }]
      }
    }],
    "linkId" : "razon-eliminar",
    "text" : "Razón para eliminar al paciente",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerOption" : [{
      "valueCoding" : {
        "code" : "se-mudo",
        "display" : "Se mudó"
      }
    },
    {
      "valueCoding" : {
        "code" : "fallecido",
        "display" : "Falleció"
      }
    },
    {
      "valueCoding" : {
        "code" : "registro-duplicado",
        "display" : "Registro duplicado"
      }
    },
    {
      "valueCoding" : {
        "code" : "otro",
        "display" : "Otro"
      }
    }]
  },
  {
    "linkId" : "otra-razon-eliminar",
    "text" : "Especifique la razón",
    "type" : "string",
    "enableWhen" : [{
      "question" : "razon-eliminar",
      "operator" : "=",
      "answerCoding" : {
        "code" : "otro"
      }
    }],
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "fecha-fallecimiento",
    "text" : "Fecha de fallecimiento",
    "type" : "date",
    "enableWhen" : [{
      "question" : "razon-eliminar",
      "operator" : "=",
      "answerCoding" : {
        "code" : "fallecido"
      }
    }],
    "required" : true,
    "repeats" : false
  }]
}

```

# MINSA - Silenciar Paciente - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MINSA - Silenciar Paciente**

## Questionnaire: MINSA - Silenciar Paciente
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MINSAQSilenciarPaciente",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"]
  },
  "language" : "es",
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap",
    "valueCanonical" : "http://minsa.gob.pe/immunizations/StructureMap/MINSASilenciarPacienteSM"
  }],
  "url" : "http://minsa.gob.pe/immunizations/Questionnaire/MINSAQSilenciarPaciente",
  "version" : "1.0.0",
  "title" : "MINSA - Silenciar Paciente",
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
  "description" : "Cuestionario para silenciar un paciente, desactivando los recordatorios de vacunación. Se utiliza cuando el paciente se ha mudado, fue transferido o se perdió el seguimiento.",
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
    "linkId" : "razon-silenciar",
    "text" : "Razón para silenciar al paciente",
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
        "code" : "transferido",
        "display" : "Transferido a otro establecimiento"
      }
    },
    {
      "valueCoding" : {
        "code" : "perdida-seguimiento",
        "display" : "Pérdida de seguimiento"
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
    "linkId" : "otra-razon-silenciar",
    "text" : "Especifique la razón",
    "type" : "string",
    "enableWhen" : [{
      "question" : "razon-silenciar",
      "operator" : "=",
      "answerCoding" : {
        "code" : "otro"
      }
    }],
    "required" : true,
    "repeats" : false
  }]
}

```

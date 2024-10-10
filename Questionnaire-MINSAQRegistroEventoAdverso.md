# MINSA - Registro de Evento Adverso - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MINSA - Registro de Evento Adverso**

## Questionnaire: MINSA - Registro de Evento Adverso
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MINSAQRegistroEventoAdverso",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"]
  },
  "language" : "es",
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap",
    "valueCanonical" : "http://minsa.gob.pe/immunizations/StructureMap/MINSARegistroEventoAdversoSM"
  },
  {
    "extension" : [{
      "url" : "name",
      "valueCoding" : {
        "system" : "http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext",
        "code" : "patient",
        "display" : "Patient"
      }
    },
    {
      "url" : "type",
      "valueCode" : "Patient"
    }],
    "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/variable",
    "valueExpression" : {
      "name" : "vacunas",
      "language" : "application/x-fhir-query",
      "expression" : "Immunization?patient={{%patient.id.replaceMatches('/_history/.*', '')}}&_sort=date"
    }
  }],
  "url" : "http://minsa.gob.pe/immunizations/Questionnaire/MINSAQRegistroEventoAdverso",
  "version" : "1.0.0",
  "title" : "MINSA - Registro de Evento Adverso",
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
  "description" : "Cuestionario para registrar un evento adverso supuestamente atribuible a la vacunación o inmunización (ESAVI). Adaptado del cuestionario MINSA EIR record_adverse_event.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PE",
      "display" : "Peru"
    }]
  }],
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    }],
    "linkId" : "id-paciente",
    "text" : "ID del paciente",
    "type" : "string",
    "required" : true,
    "readOnly" : true
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    }],
    "linkId" : "edad-paciente-anos",
    "text" : "Edad del paciente en años",
    "type" : "integer",
    "required" : false,
    "readOnly" : true
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    }],
    "linkId" : "fecha-nacimiento-paciente",
    "text" : "Fecha de nacimiento del paciente",
    "type" : "string",
    "required" : false,
    "readOnly" : true
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/questionnaire-item-control",
          "code" : "drop-down"
        }]
      }
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression",
      "valueExpression" : {
        "language" : "application/x-fhir-query",
        "expression" : "Immunization?patient=Patient/{{%patient.id.replaceMatches('/_history/.*', '')}}&_sort=date"
      }
    },
    {
      "extension" : [{
        "url" : "path",
        "valueString" : "vaccineCode.text"
      },
      {
        "url" : "forDisplay",
        "valueBoolean" : true
      }],
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn"
    }],
    "linkId" : "vacuna-causante",
    "text" : "Vacuna que causó la reacción",
    "type" : "reference",
    "required" : true
  },
  {
    "linkId" : "fecha-reaccion",
    "text" : "Fecha en que el paciente comenzó a presentar la reacción",
    "type" : "date",
    "required" : true
  },
  {
    "linkId" : "tipo-manifestacion",
    "text" : "Tipo de manifestación",
    "type" : "choice",
    "required" : false,
    "answerOption" : [{
      "valueCoding" : {
        "code" : "reaccion-local-severa",
        "display" : "Reacción local severa"
      }
    },
    {
      "valueCoding" : {
        "code" : "convulsiones",
        "display" : "Convulsiones"
      }
    },
    {
      "valueCoding" : {
        "code" : "absceso",
        "display" : "Absceso"
      }
    },
    {
      "valueCoding" : {
        "code" : "sepsis",
        "display" : "Sepsis"
      }
    },
    {
      "valueCoding" : {
        "code" : "encefalopatia",
        "display" : "Encefalopatía"
      }
    },
    {
      "valueCoding" : {
        "code" : "sindrome-shock-toxico",
        "display" : "Síndrome de shock tóxico"
      }
    },
    {
      "valueCoding" : {
        "code" : "anafilaxia",
        "display" : "Anafilaxia"
      }
    },
    {
      "valueCoding" : {
        "code" : "fiebre",
        "display" : "Fiebre"
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
    "linkId" : "otro-tipo-manifestacion",
    "text" : "Especifique otro tipo de manifestación",
    "type" : "string",
    "enableWhen" : [{
      "question" : "tipo-manifestacion",
      "operator" : "=",
      "answerCoding" : {
        "code" : "otro"
      }
    }],
    "required" : false
  },
  {
    "linkId" : "severidad",
    "text" : "Severidad de la reacción",
    "type" : "choice",
    "required" : false,
    "answerOption" : [{
      "valueCoding" : {
        "code" : "no-grave",
        "display" : "No grave"
      }
    },
    {
      "valueCoding" : {
        "code" : "muerte",
        "display" : "Muerte"
      }
    },
    {
      "valueCoding" : {
        "code" : "riesgo-vital",
        "display" : "Riesgo vital"
      }
    },
    {
      "valueCoding" : {
        "code" : "discapacidad",
        "display" : "Discapacidad"
      }
    },
    {
      "valueCoding" : {
        "code" : "hospitalizacion",
        "display" : "Hospitalización"
      }
    },
    {
      "valueCoding" : {
        "code" : "anomalia-congenita",
        "display" : "Anomalía congénita"
      }
    },
    {
      "valueCoding" : {
        "code" : "otro-evento-medico-importante",
        "display" : "Otro evento médico importante (especificar)"
      }
    }]
  },
  {
    "linkId" : "especificar-otro-evento",
    "text" : "Especifique otro evento médico importante",
    "type" : "string",
    "enableWhen" : [{
      "question" : "severidad",
      "operator" : "=",
      "answerCoding" : {
        "code" : "otro-evento-medico-importante"
      }
    }],
    "required" : false
  },
  {
    "linkId" : "resultado",
    "text" : "Resultado de la reacción",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "severidad",
      "operator" : "!=",
      "answerCoding" : {
        "code" : "muerte"
      }
    }],
    "required" : false,
    "answerOption" : [{
      "valueCoding" : {
        "code" : "fallecido",
        "display" : "Fallecido"
      }
    },
    {
      "valueCoding" : {
        "code" : "recuperado",
        "display" : "Recuperado"
      }
    },
    {
      "valueCoding" : {
        "code" : "recuperado-con-secuelas",
        "display" : "Recuperado con secuelas"
      }
    },
    {
      "valueCoding" : {
        "code" : "en-recuperacion",
        "display" : "En recuperación"
      }
    },
    {
      "valueCoding" : {
        "code" : "no-recuperado",
        "display" : "No recuperado"
      }
    }]
  },
  {
    "linkId" : "fecha-fallecimiento",
    "text" : "Fecha de fallecimiento",
    "type" : "date",
    "enableWhen" : [{
      "question" : "severidad",
      "operator" : "=",
      "answerCoding" : {
        "code" : "muerte"
      }
    },
    {
      "question" : "resultado",
      "operator" : "=",
      "answerCoding" : {
        "code" : "fallecido"
      }
    }],
    "enableBehavior" : "any",
    "required" : true
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/questionnaire-item-control",
          "code" : "drop-down"
        }]
      }
    }],
    "linkId" : "fue-referido",
    "text" : "¿Fue referido el paciente?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "valueCoding" : {
        "code" : "si",
        "display" : "Sí"
      }
    },
    {
      "valueCoding" : {
        "code" : "no",
        "display" : "No"
      }
    }]
  }]
}

```

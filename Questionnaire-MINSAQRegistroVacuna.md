# MINSA - Registro de Vacunación - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MINSA - Registro de Vacunación**

## Questionnaire: MINSA - Registro de Vacunación
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MINSAQRegistroVacuna",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"]
  },
  "language" : "es",
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap",
    "valueCanonical" : "http://minsa.gob.pe/immunizations/StructureMap/MINSARegistroVacunaSM"
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
      "name" : "desc-tarea",
      "language" : "text/fhirpath",
      "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value"
    }
  }],
  "url" : "http://minsa.gob.pe/immunizations/Questionnaire/MINSAQRegistroVacuna",
  "version" : "1.0.0",
  "title" : "MINSA - Registro de Vacunación",
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
  "description" : "Cuestionario para registrar la administración de una vacuna individual. Adaptado del cuestionario MINSA EIR record_child_immunization.",
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
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "Patient.birthDate"
      }
    }],
    "linkId" : "paciente-fecha-nacimiento",
    "text" : "Fecha de nacimiento del paciente",
    "type" : "string",
    "required" : false,
    "readOnly" : true
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    }],
    "linkId" : "nombre-tarea",
    "text" : "Nombre de la tarea",
    "type" : "string",
    "required" : false,
    "readOnly" : true
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    }],
    "linkId" : "codigo-tarea",
    "text" : "Código de la tarea",
    "type" : "integer",
    "required" : false,
    "readOnly" : true
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    }],
    "linkId" : "descripcion-tarea",
    "text" : "Descripción de la tarea",
    "type" : "string",
    "required" : false,
    "readOnly" : true
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    }],
    "linkId" : "id-logico-tarea",
    "text" : "ID lógico de la tarea",
    "type" : "string",
    "required" : false,
    "readOnly" : true
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    }],
    "linkId" : "numero-dosis-vacuna",
    "text" : "Número de dosis de la vacuna",
    "type" : "string",
    "required" : false,
    "readOnly" : true
  },
  {
    "linkId" : "vacuna-administrada",
    "text" : "¿Se administró la vacuna?",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
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
    "linkId" : "razon-no-administrada",
    "text" : "¿Por qué no se administró la vacuna?",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "vacuna-administrada",
      "operator" : "=",
      "answerCoding" : {
        "code" : "no"
      }
    }],
    "required" : true,
    "repeats" : false,
    "answerOption" : [{
      "valueCoding" : {
        "code" : "inmunidad",
        "display" : "Inmunidad"
      }
    },
    {
      "valueCoding" : {
        "code" : "desabastecimiento",
        "display" : "Desabastecimiento"
      }
    },
    {
      "valueCoding" : {
        "code" : "precaucion-medica",
        "display" : "Precaución médica"
      }
    },
    {
      "valueCoding" : {
        "code" : "producto-agotado",
        "display" : "Producto agotado"
      }
    },
    {
      "valueCoding" : {
        "code" : "objecion-del-paciente",
        "display" : "Objeción del paciente"
      }
    },
    {
      "valueCoding" : {
        "code" : "rechazo-del-cuidador",
        "display" : "Rechazo del cuidador"
      }
    },
    {
      "valueCoding" : {
        "code" : "razon-no-especificada",
        "display" : "Razón no especificada"
      }
    },
    {
      "valueCoding" : {
        "code" : "alergia-a-vacuna-o-componente",
        "display" : "Alergia a la vacuna o componente"
      }
    },
    {
      "valueCoding" : {
        "code" : "inmunocomprometido",
        "display" : "Inmunocomprometido"
      }
    },
    {
      "valueCoding" : {
        "code" : "enfermedad-cronica",
        "display" : "Enfermedad crónica o condición"
      }
    },
    {
      "valueCoding" : {
        "code" : "enfermedad-aguda",
        "display" : "Enfermedad aguda"
      }
    },
    {
      "valueCoding" : {
        "code" : "ya-tuvo-la-enfermedad",
        "display" : "Ya tuvo la enfermedad"
      }
    },
    {
      "valueCoding" : {
        "code" : "otra-razon",
        "display" : "No se realizó la inmunización por otras razones"
      }
    }]
  },
  {
    "linkId" : "fecha-vacunacion",
    "text" : "Fecha de vacunación",
    "type" : "date",
    "enableWhen" : [{
      "question" : "vacuna-administrada",
      "operator" : "=",
      "answerCoding" : {
        "code" : "si"
      }
    }],
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "numero-lote",
    "text" : "Número de lote de la vacuna",
    "type" : "string",
    "enableWhen" : [{
      "question" : "vacuna-administrada",
      "operator" : "=",
      "answerCoding" : {
        "code" : "si"
      }
    }],
    "required" : true,
    "repeats" : false
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
    "linkId" : "lugar-vacunacion",
    "text" : "Lugar de la vacunación",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "vacuna-administrada",
      "operator" : "=",
      "answerCoding" : {
        "code" : "si"
      }
    }],
    "required" : true,
    "repeats" : false,
    "answerOption" : [{
      "valueCoding" : {
        "code" : "establecimiento",
        "display" : "Establecimiento de salud"
      }
    },
    {
      "valueCoding" : {
        "code" : "brigada-movil",
        "display" : "Brigada móvil"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean" : true
    }],
    "linkId" : "numeros-dosis-vacunas",
    "text" : "Números de dosis por vacuna",
    "type" : "group",
    "required" : false,
    "repeats" : false,
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('bcg 0')"
        }
      }],
      "linkId" : "bcg 0",
      "type" : "string",
      "initial" : [{
        "valueString" : "1"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('hvb 0')"
        }
      }],
      "linkId" : "hvb 0",
      "type" : "string",
      "initial" : [{
        "valueString" : "1"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('penta 1')"
        }
      }],
      "linkId" : "penta 1",
      "type" : "string",
      "initial" : [{
        "valueString" : "1"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('penta 2')"
        }
      }],
      "linkId" : "penta 2",
      "type" : "string",
      "initial" : [{
        "valueString" : "2"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('penta 3')"
        }
      }],
      "linkId" : "penta 3",
      "type" : "string",
      "initial" : [{
        "valueString" : "3"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('ipv 1')"
        }
      }],
      "linkId" : "ipv 1",
      "type" : "string",
      "initial" : [{
        "valueString" : "1"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('ipv 2')"
        }
      }],
      "linkId" : "ipv 2",
      "type" : "string",
      "initial" : [{
        "valueString" : "2"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('apo 1')"
        }
      }],
      "linkId" : "apo 1",
      "type" : "string",
      "initial" : [{
        "valueString" : "3"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('apo refuerzo')"
        }
      }],
      "linkId" : "apo refuerzo",
      "type" : "string",
      "initial" : [{
        "valueString" : "Refuerzo"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('rota 1')"
        }
      }],
      "linkId" : "rota 1",
      "type" : "string",
      "initial" : [{
        "valueString" : "1"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('rota 2')"
        }
      }],
      "linkId" : "rota 2",
      "type" : "string",
      "initial" : [{
        "valueString" : "2"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('neumococo 1')"
        }
      }],
      "linkId" : "neumococo 1",
      "type" : "string",
      "initial" : [{
        "valueString" : "1"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('neumococo 2')"
        }
      }],
      "linkId" : "neumococo 2",
      "type" : "string",
      "initial" : [{
        "valueString" : "2"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('neumococo refuerzo')"
        }
      }],
      "linkId" : "neumococo refuerzo",
      "type" : "string",
      "initial" : [{
        "valueString" : "Refuerzo"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('influenza 1')"
        }
      }],
      "linkId" : "influenza 1",
      "type" : "string",
      "initial" : [{
        "valueString" : "1"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('influenza 2')"
        }
      }],
      "linkId" : "influenza 2",
      "type" : "string",
      "initial" : [{
        "valueString" : "2"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('spr 1')"
        }
      }],
      "linkId" : "spr 1",
      "type" : "string",
      "initial" : [{
        "valueString" : "1"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('spr refuerzo')"
        }
      }],
      "linkId" : "spr refuerzo",
      "type" : "string",
      "initial" : [{
        "valueString" : "Refuerzo"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('varicela 1')"
        }
      }],
      "linkId" : "varicela 1",
      "type" : "string",
      "initial" : [{
        "valueString" : "1"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('varicela refuerzo')"
        }
      }],
      "linkId" : "varicela refuerzo",
      "type" : "string",
      "initial" : [{
        "valueString" : "Refuerzo"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('ama 1')"
        }
      }],
      "linkId" : "ama 1",
      "type" : "string",
      "initial" : [{
        "valueString" : "1"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('dpt refuerzo')"
        }
      }],
      "linkId" : "dpt refuerzo",
      "type" : "string",
      "initial" : [{
        "valueString" : "Refuerzo"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('hepa 1')"
        }
      }],
      "linkId" : "hepa 1",
      "type" : "string",
      "initial" : [{
        "valueString" : "1"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('vph 1')"
        }
      }],
      "linkId" : "vph 1",
      "type" : "string",
      "initial" : [{
        "valueString" : "1"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('vph 2')"
        }
      }],
      "linkId" : "vph 2",
      "type" : "string",
      "initial" : [{
        "valueString" : "2"
      }]
    }]
  }]
}

```

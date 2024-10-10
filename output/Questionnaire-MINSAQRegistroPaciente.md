# MINSA - Registro de Paciente - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MINSA - Registro de Paciente**

## Questionnaire: MINSA - Registro de Paciente
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MINSAQRegistroPaciente",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"]
  },
  "language" : "es",
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap",
    "valueCanonical" : "http://minsa.gob.pe/immunizations/StructureMap/MINSARegistroPacienteSM"
  }],
  "url" : "http://minsa.gob.pe/immunizations/Questionnaire/MINSAQRegistroPaciente",
  "version" : "1.0.0",
  "title" : "MINSA - Registro de Paciente",
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
  "description" : "Cuestionario para el registro de pacientes (niños) en el programa de inmunizaciones del MINSA Perú. Incluye datos del cuidador, datos del niño, ubicación geográfica y seguro SIS.",
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
    "linkId" : "es-edicion-perfil",
    "text" : "Es edición de perfil",
    "type" : "boolean",
    "required" : false,
    "readOnly" : true
  },
  {
    "linkId" : "grupo-cuidador",
    "text" : "Datos del cuidador",
    "type" : "group",
    "required" : false,
    "repeats" : false,
    "item" : [{
      "linkId" : "cuidador-nombre",
      "text" : "Nombre del cuidador",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "cuidador-apellido",
      "text" : "Apellido del cuidador",
      "type" : "string",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/regex",
        "valueString" : "^[0-9]{8}$"
      }],
      "linkId" : "cuidador-dni",
      "text" : "DNI del cuidador",
      "type" : "string",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/regex",
        "valueString" : "^[0-9]{9}$"
      }],
      "linkId" : "cuidador-telefono",
      "text" : "Teléfono del cuidador",
      "type" : "string",
      "required" : false
    },
    {
      "linkId" : "cuidador-relacion",
      "text" : "Relación con el niño",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "code" : "madre",
          "display" : "Madre"
        }
      },
      {
        "valueCoding" : {
          "code" : "padre",
          "display" : "Padre"
        }
      },
      {
        "valueCoding" : {
          "code" : "abuelo-a",
          "display" : "Abuelo/a"
        }
      },
      {
        "valueCoding" : {
          "code" : "hermano-a",
          "display" : "Hermano/a"
        }
      },
      {
        "valueCoding" : {
          "code" : "tio-a",
          "display" : "Tío/a"
        }
      },
      {
        "valueCoding" : {
          "code" : "otro",
          "display" : "Otro"
        }
      }]
    }]
  },
  {
    "linkId" : "grupo-nino",
    "text" : "Datos del niño",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/regex",
        "valueString" : "^[a-zA-ZáéíóúñÁÉÍÓÚÑ\\- ]+$"
      }],
      "linkId" : "nino-nombre",
      "text" : "Nombre del niño",
      "type" : "string",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/regex",
        "valueString" : "^[a-zA-ZáéíóúñÁÉÍÓÚÑ\\- ]+$"
      }],
      "linkId" : "nino-apellido",
      "text" : "Apellido del niño",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "nino-fecha-nacimiento",
      "text" : "Fecha de nacimiento",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "nino-sexo",
      "text" : "Sexo",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "male",
          "display" : "Masculino"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "female",
          "display" : "Femenino"
        }
      }]
    },
    {
      "linkId" : "nino-tipo-documento",
      "text" : "Tipo de documento",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "code" : "dni",
          "display" : "DNI"
        }
      },
      {
        "valueCoding" : {
          "code" : "cnv",
          "display" : "Certificado de Nacido Vivo (CNV)"
        }
      }]
    },
    {
      "linkId" : "nino-numero-documento",
      "text" : "Número de documento (DNI o CNV)",
      "type" : "string",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
        "valueBoolean" : true
      },
      {
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "today().toString().substring(0, 4).toInteger() - %resource.descendants().where(linkId='nino-fecha-nacimiento').answer.value.toString().substring(0, 4).toInteger()"
        }
      }],
      "linkId" : "nino-edad-calculada",
      "text" : "Edad calculada",
      "type" : "integer",
      "required" : false,
      "readOnly" : true
    }]
  },
  {
    "linkId" : "grupo-ubicacion",
    "text" : "Ubicación geográfica",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "ubicacion-departamento",
      "text" : "Departamento",
      "type" : "reference",
      "required" : true
    },
    {
      "linkId" : "ubicacion-provincia",
      "text" : "Provincia",
      "type" : "reference",
      "required" : true
    },
    {
      "linkId" : "ubicacion-distrito",
      "text" : "Distrito",
      "type" : "reference",
      "required" : true
    },
    {
      "linkId" : "ubicacion-establecimiento",
      "text" : "Establecimiento de salud",
      "type" : "reference",
      "required" : true
    }]
  },
  {
    "linkId" : "numero-sis",
    "text" : "Número del Seguro Integral de Salud (SIS)",
    "type" : "string",
    "required" : false
  }]
}

```

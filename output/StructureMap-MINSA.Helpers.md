# MINSA.Helpers - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MINSA.Helpers**

## StructureMap: MINSA.Helpers 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/StructureMap/MINSA.Helpers | *Version*:1.0.0 |
| Draft as of 2026-03-16 | *Computable Name*:MINSA.Helpers |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "MINSA.Helpers",
  "url" : "http://minsa.gob.pe/immunizations/StructureMap/MINSA.Helpers",
  "version" : "1.0.0",
  "name" : "MINSA.Helpers",
  "status" : "draft",
  "date" : "2026-03-16T12:33:41-04:00",
  "publisher" : "MINSA - Ministerio de Salud del Perú",
  "contact" : [{
    "name" : "MINSA - Ministerio de Salud del Perú",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gob.pe/minsa"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PE",
      "display" : "Peru"
    }]
  }],
  "structure" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
    "mode" : "source",
    "alias" : "QResp"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  }],
  "group" : [{
    "name" : "ItemToValue",
    "typeMode" : "none",
    "documentation" : "Extrae el valor de la primera respuesta de un item",
    "input" : [{
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "field",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "FirstAnswer",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "answer"
      }],
      "rule" : [{
        "name" : "SetValue",
        "source" : [{
          "context" : "answer",
          "element" : "value",
          "variable" : "content"
        }],
        "target" : [{
          "context" : "field",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "content"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "ItemToCode",
    "typeMode" : "none",
    "documentation" : "Extrae el codigo de una respuesta codificada",
    "input" : [{
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "field",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "FirstAnswer",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "answer"
      }],
      "rule" : [{
        "name" : "Coding",
        "source" : [{
          "context" : "answer",
          "element" : "value",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "SetCode",
          "source" : [{
            "context" : "coding",
            "element" : "code",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "field",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "ItemToCoding",
    "typeMode" : "none",
    "documentation" : "Extrae sistema, codigo y display de una respuesta codificada",
    "input" : [{
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "field",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "FirstAnswer",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "answer"
      }],
      "rule" : [{
        "name" : "Coding",
        "source" : [{
          "context" : "answer",
          "element" : "value",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "SetCode",
          "source" : [{
            "context" : "coding",
            "element" : "code",
            "variable" : "code"
          }],
          "target" : [{
            "context" : "field",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "code"
            }]
          }]
        },
        {
          "name" : "SetSystem",
          "source" : [{
            "context" : "coding",
            "element" : "system",
            "variable" : "system"
          }],
          "target" : [{
            "context" : "field",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "system"
            }]
          }]
        },
        {
          "name" : "SetDisplay",
          "source" : [{
            "context" : "coding",
            "element" : "display",
            "variable" : "display"
          }],
          "target" : [{
            "context" : "field",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "display"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "SetDNI",
    "typeMode" : "none",
    "documentation" : "Crea un identificador DNI con sistema MINSA",
    "input" : [{
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "identifier",
      "type" : "Identifier",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "DNIAnswer",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "answer"
      }],
      "rule" : [{
        "name" : "SetDNIValue",
        "source" : [{
          "context" : "answer",
          "element" : "value",
          "variable" : "val"
        }],
        "target" : [{
          "context" : "identifier",
          "contextType" : "variable",
          "element" : "use",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "official"
          }]
        },
        {
          "context" : "identifier",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://minsa.gob.pe/sid/dni"
          }]
        },
        {
          "context" : "identifier",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "val"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "SetPhone",
    "typeMode" : "none",
    "documentation" : "Crea un ContactPoint de telefono",
    "input" : [{
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "telecom",
      "type" : "ContactPoint",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "PhoneAnswer",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "answer"
      }],
      "rule" : [{
        "name" : "SetPhoneValue",
        "source" : [{
          "context" : "answer",
          "element" : "value",
          "variable" : "val"
        }],
        "target" : [{
          "context" : "telecom",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "phone"
          }]
        },
        {
          "context" : "telecom",
          "contextType" : "variable",
          "element" : "use",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "mobile"
          }]
        },
        {
          "context" : "telecom",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "val"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MakeObservation",
    "typeMode" : "none",
    "documentation" : "Crea una Observation vinculada a un paciente y encuentro",
    "input" : [{
      "name" : "patient",
      "type" : "Reference",
      "mode" : "source"
    },
    {
      "name" : "code",
      "type" : "Coding",
      "mode" : "source"
    },
    {
      "name" : "cat",
      "type" : "Coding",
      "mode" : "source"
    },
    {
      "name" : "value",
      "mode" : "source"
    },
    {
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "CreateObservation",
      "source" : [{
        "context" : "value"
      }],
      "target" : [{
        "contextType" : "variable",
        "variable" : "oid",
        "transform" : "uuid"
      },
      {
        "context" : "bundle",
        "contextType" : "variable",
        "element" : "entry",
        "variable" : "entry"
      },
      {
        "context" : "entry",
        "contextType" : "variable",
        "element" : "fullUrl",
        "transform" : "append",
        "parameter" : [{
          "valueString" : "urn:uuid:"
        },
        {
          "valueId" : "oid"
        }]
      },
      {
        "context" : "entry",
        "contextType" : "variable",
        "element" : "request",
        "variable" : "request"
      },
      {
        "context" : "request",
        "contextType" : "variable",
        "element" : "method",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "PUT"
        }]
      },
      {
        "context" : "request",
        "contextType" : "variable",
        "element" : "url",
        "transform" : "append",
        "parameter" : [{
          "valueString" : "Observation/"
        },
        {
          "valueId" : "oid"
        }]
      },
      {
        "context" : "entry",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "obs",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Observation"
        }]
      }],
      "rule" : [{
        "name" : "SetId",
        "source" : [{
          "context" : "value"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "id",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "oid"
          }]
        }]
      },
      {
        "name" : "SetSubject",
        "source" : [{
          "context" : "patient"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "patient"
          }]
        }]
      },
      {
        "name" : "SetCode",
        "source" : [{
          "context" : "code"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "code"
          }]
        }]
      },
      {
        "name" : "SetValue",
        "source" : [{
          "context" : "value"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "value"
          }]
        }]
      },
      {
        "name" : "SetCategory",
        "source" : [{
          "context" : "cat"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "category",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "cat"
          }]
        }]
      }]
    }]
  }]
}

```

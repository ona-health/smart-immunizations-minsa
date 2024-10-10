# MINSA.RegistroPaciente.QRToPatient - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MINSA.RegistroPaciente.QRToPatient**

## StructureMap: MINSA.RegistroPaciente.QRToPatient 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/StructureMap/MINSA.RegistroPaciente.QRToPatient | *Version*:1.0.0 |
| Draft as of 2026-03-16 | *Computable Name*:MINSA.RegistroPaciente.QRToPatient |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "MINSA.RegistroPaciente.QRToPatient",
  "url" : "http://minsa.gob.pe/immunizations/StructureMap/MINSA.RegistroPaciente.QRToPatient",
  "version" : "1.0.0",
  "name" : "MINSA.RegistroPaciente.QRToPatient",
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
  "import" : ["http://minsa.gob.pe/immunizations/StructureMap/MINSA.Helpers"],
  "group" : [{
    "name" : "RegistroPaciente",
    "typeMode" : "none",
    "input" : [{
      "name" : "src",
      "type" : "QResp",
      "mode" : "source"
    },
    {
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "BundleStatic",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "uuid"
      },
      {
        "context" : "bundle",
        "contextType" : "variable",
        "element" : "type",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "collection"
        }]
      }]
    },
    {
      "name" : "BundleEntries",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable",
        "element" : "entry",
        "variable" : "entry"
      },
      {
        "context" : "entry",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "patient",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Patient"
        }]
      },
      {
        "context" : "bundle",
        "contextType" : "variable",
        "element" : "entry",
        "variable" : "rpEntry"
      },
      {
        "context" : "rpEntry",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "caregiver",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "RelatedPerson"
        }]
      },
      {
        "context" : "bundle",
        "contextType" : "variable",
        "element" : "entry",
        "variable" : "grpEntry"
      },
      {
        "context" : "grpEntry",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "group",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Group"
        }]
      }],
      "rule" : [{
        "name" : "ExtractPatient",
        "source" : [{
          "context" : "src"
        }],
        "dependent" : [{
          "name" : "ExtractPatient",
          "variable" : ["src", "patient"]
        }]
      },
      {
        "name" : "ExtractCuidador",
        "source" : [{
          "context" : "src"
        }],
        "dependent" : [{
          "name" : "ExtractCuidador",
          "variable" : ["src", "caregiver", "patient"]
        }]
      },
      {
        "name" : "ExtractGroup",
        "source" : [{
          "context" : "src"
        }],
        "dependent" : [{
          "name" : "ExtractGroup",
          "variable" : ["src", "group", "patient", "caregiver"]
        }]
      }]
    }]
  },
  {
    "name" : "ExtractPatient",
    "typeMode" : "none",
    "documentation" : "Extrae el recurso Patient (nino) del cuestionario",
    "input" : [{
      "name" : "src",
      "type" : "QResp",
      "mode" : "source"
    },
    {
      "name" : "patient",
      "type" : "Patient",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "PatientStatic",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "uuid"
      },
      {
        "context" : "patient",
        "contextType" : "variable",
        "element" : "active",
        "transform" : "copy",
        "parameter" : [{
          "valueBoolean" : true
        }]
      }]
    },
    {
      "name" : "PatientDNI",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'patient-dni'"
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
          "name" : "CreateDNI",
          "source" : [{
            "context" : "answer",
            "element" : "value",
            "variable" : "val"
          }],
          "target" : [{
            "context" : "patient",
            "contextType" : "variable",
            "element" : "identifier",
            "variable" : "id",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Identifier"
            }]
          }],
          "rule" : [{
            "name" : "SetDNIValues",
            "source" : [{
              "context" : "val"
            }],
            "target" : [{
              "context" : "id",
              "contextType" : "variable",
              "element" : "use",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "official"
              }]
            },
            {
              "context" : "id",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://minsa.gob.pe/sid/dni"
              }]
            },
            {
              "context" : "id",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "PatientName",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable",
        "element" : "name",
        "variable" : "name",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "HumanName"
        }]
      }],
      "rule" : [{
        "name" : "NameUse",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "name",
          "contextType" : "variable",
          "element" : "use",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "official"
          }]
        }]
      },
      {
        "name" : "GivenName",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "item",
          "condition" : "linkId = 'patient-given-name'"
        }],
        "rule" : [{
          "name" : "GivenAnswer",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "SetGivenName",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "name",
              "contextType" : "variable",
              "element" : "given",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "SecondName",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "item",
          "condition" : "linkId = 'patient-second-name'"
        }],
        "rule" : [{
          "name" : "SecondNameAnswer",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "SetSecondName",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "name",
              "contextType" : "variable",
              "element" : "given",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "PaternalSurname",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "item",
          "condition" : "linkId = 'patient-paternal-surname'"
        }],
        "rule" : [{
          "name" : "PaternalAnswer",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "SetPaternalSurname",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "name",
              "contextType" : "variable",
              "element" : "family",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "PatientBirthDate",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'patient-birth-date'"
      }],
      "rule" : [{
        "name" : "BirthDateAnswer",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "SetBirthDate",
          "source" : [{
            "context" : "answer",
            "element" : "value",
            "variable" : "val"
          }],
          "target" : [{
            "context" : "patient",
            "contextType" : "variable",
            "element" : "birthDate",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "val"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "PatientGender",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'patient-gender'"
      }],
      "rule" : [{
        "name" : "GenderAnswer",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "GenderCoding",
          "source" : [{
            "context" : "answer",
            "element" : "value",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "SetGender",
            "source" : [{
              "context" : "coding",
              "element" : "code",
              "variable" : "code"
            }],
            "target" : [{
              "context" : "patient",
              "contextType" : "variable",
              "element" : "gender",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "code"
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "PatientAddress",
      "source" : [{
        "context" : "src"
      }],
      "dependent" : [{
        "name" : "ExtractAddress",
        "variable" : ["src", "patient"]
      }]
    }]
  },
  {
    "name" : "ExtractAddress",
    "typeMode" : "none",
    "documentation" : "Extrae la direccion con extensiones de division administrativa peruana",
    "input" : [{
      "name" : "src",
      "type" : "QResp",
      "mode" : "source"
    },
    {
      "name" : "patient",
      "type" : "Patient",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "PatientAddress",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "patient",
        "contextType" : "variable",
        "element" : "address",
        "variable" : "address",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Address"
        }]
      }],
      "rule" : [{
        "name" : "AddressStatic",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "address",
          "contextType" : "variable",
          "element" : "use",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "home"
          }]
        },
        {
          "context" : "address",
          "contextType" : "variable",
          "element" : "type",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "physical"
          }]
        }]
      },
      {
        "name" : "AddressText",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "item",
          "condition" : "linkId = 'patient-address-text'"
        }],
        "rule" : [{
          "name" : "AddressTextAnswer",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "SetAddressText",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "address",
              "contextType" : "variable",
              "element" : "text",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "Departamento",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "item",
          "condition" : "linkId = 'patient-departamento'"
        }],
        "rule" : [{
          "name" : "DeptAnswer",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "CreateDeptExt",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "coding"
            }],
            "target" : [{
              "context" : "address",
              "contextType" : "variable",
              "element" : "extension",
              "variable" : "ext",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "Extension"
              }]
            }],
            "rule" : [{
              "name" : "SetDeptURL",
              "source" : [{
                "context" : "coding"
              }],
              "target" : [{
                "context" : "ext",
                "contextType" : "variable",
                "element" : "url",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "http://minsa.gob.pe/immunizations/StructureDefinition/MINSADepartamento"
                }]
              }]
            },
            {
              "name" : "SetDeptValue",
              "source" : [{
                "context" : "coding"
              }],
              "target" : [{
                "context" : "ext",
                "contextType" : "variable",
                "element" : "value",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "coding"
                }]
              }]
            }]
          }]
        }]
      },
      {
        "name" : "Provincia",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "item",
          "condition" : "linkId = 'patient-provincia'"
        }],
        "rule" : [{
          "name" : "ProvAnswer",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "CreateProvExt",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "coding"
            }],
            "target" : [{
              "context" : "address",
              "contextType" : "variable",
              "element" : "extension",
              "variable" : "ext",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "Extension"
              }]
            }],
            "rule" : [{
              "name" : "SetProvURL",
              "source" : [{
                "context" : "coding"
              }],
              "target" : [{
                "context" : "ext",
                "contextType" : "variable",
                "element" : "url",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "http://minsa.gob.pe/immunizations/StructureDefinition/MINSAProvincia"
                }]
              }]
            },
            {
              "name" : "SetProvValue",
              "source" : [{
                "context" : "coding"
              }],
              "target" : [{
                "context" : "ext",
                "contextType" : "variable",
                "element" : "value",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "coding"
                }]
              }]
            }]
          }]
        }]
      },
      {
        "name" : "Distrito",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "item",
          "condition" : "linkId = 'patient-distrito'"
        }],
        "rule" : [{
          "name" : "DistAnswer",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "CreateDistExt",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "coding"
            }],
            "target" : [{
              "context" : "address",
              "contextType" : "variable",
              "element" : "extension",
              "variable" : "ext",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "Extension"
              }]
            }],
            "rule" : [{
              "name" : "SetDistURL",
              "source" : [{
                "context" : "coding"
              }],
              "target" : [{
                "context" : "ext",
                "contextType" : "variable",
                "element" : "url",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "http://minsa.gob.pe/immunizations/StructureDefinition/MINSADistrito"
                }]
              }]
            },
            {
              "name" : "SetDistValue",
              "source" : [{
                "context" : "coding"
              }],
              "target" : [{
                "context" : "ext",
                "contextType" : "variable",
                "element" : "value",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "coding"
                }]
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "ExtractCuidador",
    "typeMode" : "none",
    "documentation" : "Extrae el recurso RelatedPerson (cuidador) del cuestionario",
    "input" : [{
      "name" : "src",
      "type" : "QResp",
      "mode" : "source"
    },
    {
      "name" : "caregiver",
      "type" : "RelatedPerson",
      "mode" : "target"
    },
    {
      "name" : "patient",
      "type" : "Patient",
      "mode" : "source"
    }],
    "rule" : [{
      "name" : "CaregiverStatic",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "caregiver",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "uuid"
      },
      {
        "context" : "caregiver",
        "contextType" : "variable",
        "element" : "active",
        "transform" : "copy",
        "parameter" : [{
          "valueBoolean" : true
        }]
      },
      {
        "context" : "caregiver",
        "contextType" : "variable",
        "element" : "patient",
        "transform" : "reference",
        "parameter" : [{
          "valueId" : "patient"
        }]
      }]
    },
    {
      "name" : "CaregiverDNI",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'caregiver-dni'"
      }],
      "rule" : [{
        "name" : "CaregiverDNIAnswer",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "CreateCaregiverDNI",
          "source" : [{
            "context" : "answer",
            "element" : "value",
            "variable" : "val"
          }],
          "target" : [{
            "context" : "caregiver",
            "contextType" : "variable",
            "element" : "identifier",
            "variable" : "id",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Identifier"
            }]
          }],
          "rule" : [{
            "name" : "SetCaregiverDNIValues",
            "source" : [{
              "context" : "val"
            }],
            "target" : [{
              "context" : "id",
              "contextType" : "variable",
              "element" : "use",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "official"
              }]
            },
            {
              "context" : "id",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://minsa.gob.pe/sid/dni"
              }]
            },
            {
              "context" : "id",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "CaregiverName",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "caregiver",
        "contextType" : "variable",
        "element" : "name",
        "variable" : "name",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "HumanName"
        }]
      }],
      "rule" : [{
        "name" : "CaregiverNameUse",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "name",
          "contextType" : "variable",
          "element" : "use",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "official"
          }]
        }]
      },
      {
        "name" : "CaregiverGivenName",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "item",
          "condition" : "linkId = 'caregiver-given-name'"
        }],
        "rule" : [{
          "name" : "CaregiverGivenAnswer",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "SetCaregiverGivenName",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "name",
              "contextType" : "variable",
              "element" : "given",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "CaregiverFamilyName",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "item",
          "condition" : "linkId = 'caregiver-paternal-surname'"
        }],
        "rule" : [{
          "name" : "CaregiverFamilyAnswer",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "SetCaregiverFamilyName",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "name",
              "contextType" : "variable",
              "element" : "family",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "CaregiverPhone",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'caregiver-phone'"
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
          "name" : "CreatePhone",
          "source" : [{
            "context" : "answer",
            "element" : "value",
            "variable" : "val"
          }],
          "target" : [{
            "context" : "caregiver",
            "contextType" : "variable",
            "element" : "telecom",
            "variable" : "phone",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "ContactPoint"
            }]
          }],
          "rule" : [{
            "name" : "SetPhoneValues",
            "source" : [{
              "context" : "val"
            }],
            "target" : [{
              "context" : "phone",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "phone"
              }]
            },
            {
              "context" : "phone",
              "contextType" : "variable",
              "element" : "use",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "mobile"
              }]
            },
            {
              "context" : "phone",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      }]
    },
    {
      "name" : "CaregiverRelationship",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'caregiver-relationship'"
      }],
      "rule" : [{
        "name" : "RelAnswer",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "CreateRelCC",
          "source" : [{
            "context" : "answer",
            "element" : "value",
            "variable" : "coding"
          }],
          "target" : [{
            "context" : "caregiver",
            "contextType" : "variable",
            "element" : "relationship",
            "variable" : "cc",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          }],
          "rule" : [{
            "name" : "SetRelCoding",
            "source" : [{
              "context" : "coding"
            }],
            "target" : [{
              "context" : "cc",
              "contextType" : "variable",
              "element" : "coding",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "coding"
              }]
            }]
          },
          {
            "name" : "SetRelText",
            "source" : [{
              "context" : "coding",
              "element" : "display",
              "variable" : "display"
            }],
            "target" : [{
              "context" : "cc",
              "contextType" : "variable",
              "element" : "text",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "display"
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "ExtractGroup",
    "typeMode" : "none",
    "documentation" : "Crea un Group que vincula al cuidador con el paciente",
    "input" : [{
      "name" : "src",
      "type" : "QResp",
      "mode" : "source"
    },
    {
      "name" : "group",
      "type" : "Group",
      "mode" : "target"
    },
    {
      "name" : "patient",
      "type" : "Patient",
      "mode" : "source"
    },
    {
      "name" : "caregiver",
      "type" : "RelatedPerson",
      "mode" : "source"
    }],
    "rule" : [{
      "name" : "GroupStatic",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "group",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "uuid"
      },
      {
        "context" : "group",
        "contextType" : "variable",
        "element" : "type",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "person"
        }]
      },
      {
        "context" : "group",
        "contextType" : "variable",
        "element" : "actual",
        "transform" : "copy",
        "parameter" : [{
          "valueBoolean" : true
        }]
      },
      {
        "context" : "group",
        "contextType" : "variable",
        "element" : "active",
        "transform" : "copy",
        "parameter" : [{
          "valueBoolean" : true
        }]
      }]
    },
    {
      "name" : "GroupName",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "group",
        "contextType" : "variable",
        "element" : "name",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Familia"
        }]
      }]
    },
    {
      "name" : "PatientMember",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "group",
        "contextType" : "variable",
        "element" : "member",
        "variable" : "memberPatient",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Group_Member"
        }]
      }],
      "rule" : [{
        "name" : "SetPatientMember",
        "source" : [{
          "context" : "patient"
        }],
        "target" : [{
          "context" : "memberPatient",
          "contextType" : "variable",
          "element" : "entity",
          "transform" : "reference",
          "parameter" : [{
            "valueId" : "patient"
          }]
        }]
      }]
    },
    {
      "name" : "CaregiverMember",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "group",
        "contextType" : "variable",
        "element" : "member",
        "variable" : "memberCaregiver",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Group_Member"
        }]
      }],
      "rule" : [{
        "name" : "SetCaregiverMember",
        "source" : [{
          "context" : "caregiver"
        }],
        "target" : [{
          "context" : "memberCaregiver",
          "contextType" : "variable",
          "element" : "entity",
          "transform" : "reference",
          "parameter" : [{
            "valueId" : "caregiver"
          }]
        }]
      }]
    }]
  }]
}

```

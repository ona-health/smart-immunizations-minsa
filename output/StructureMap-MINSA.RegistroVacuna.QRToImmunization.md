# MINSA.RegistroVacuna.QRToImmunization - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MINSA.RegistroVacuna.QRToImmunization**

## StructureMap: MINSA.RegistroVacuna.QRToImmunization 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/StructureMap/MINSA.RegistroVacuna.QRToImmunization | *Version*:1.0.0 |
| Draft as of 2026-03-16 | *Computable Name*:MINSA.RegistroVacuna.QRToImmunization |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "MINSA.RegistroVacuna.QRToImmunization",
  "url" : "http://minsa.gob.pe/immunizations/StructureMap/MINSA.RegistroVacuna.QRToImmunization",
  "version" : "1.0.0",
  "name" : "MINSA.RegistroVacuna.QRToImmunization",
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
    "name" : "RegistroVacuna",
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
      "name" : "CreateEncounter",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "contextType" : "variable",
        "variable" : "encounter",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Encounter"
        }]
      }],
      "rule" : [{
        "name" : "ExtractEncounter",
        "source" : [{
          "context" : "src"
        }],
        "dependent" : [{
          "name" : "ExtractEncounter",
          "variable" : ["src", "encounter"]
        }]
      },
      {
        "name" : "VaccineGiven",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "item",
          "condition" : "((linkId = 'vaccine-administered') and (answer.value.code = 'yes'))"
        }],
        "rule" : [{
          "name" : "ImmunizationEntry",
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
            "variable" : "immunization",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Immunization"
            }]
          }],
          "rule" : [{
            "name" : "ExtractImmunization",
            "source" : [{
              "context" : "src"
            }],
            "dependent" : [{
              "name" : "ExtractImmunization",
              "variable" : ["src", "encounter", "immunization"]
            }]
          },
          {
            "name" : "ExtractTask",
            "source" : [{
              "context" : "src"
            }],
            "dependent" : [{
              "name" : "ExtractTaskCompleted",
              "variable" : ["src", "encounter", "immunization", "bundle"]
            }]
          }]
        }]
      },
      {
        "name" : "VaccineNotGiven",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "item",
          "condition" : "((linkId = 'vaccine-administered') and (answer.value.code = 'no'))"
        }],
        "rule" : [{
          "name" : "ExtractTaskFailed",
          "source" : [{
            "context" : "src"
          }],
          "dependent" : [{
            "name" : "ExtractTaskFailed",
            "variable" : ["src", "bundle"]
          }]
        }]
      },
      {
        "name" : "EncounterEntry",
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
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "encounter"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "ExtractEncounter",
    "typeMode" : "none",
    "documentation" : "Extrae el recurso Encounter para la visita de vacunacion",
    "input" : [{
      "name" : "src",
      "type" : "QResp",
      "mode" : "source"
    },
    {
      "name" : "encounter",
      "type" : "Encounter",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "EncounterStatic",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "encounter",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "uuid"
      },
      {
        "context" : "encounter",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "finished"
        }]
      },
      {
        "context" : "encounter",
        "contextType" : "variable",
        "element" : "class",
        "transform" : "c",
        "parameter" : [{
          "valueString" : "http://terminology.hl7.org/CodeSystem/v3-ActCode"
        },
        {
          "valueString" : "AMB"
        },
        {
          "valueString" : "ambulatory"
        }]
      }]
    },
    {
      "name" : "EncounterSubject",
      "source" : [{
        "context" : "src",
        "element" : "subject",
        "variable" : "subject"
      }],
      "target" : [{
        "context" : "encounter",
        "contextType" : "variable",
        "element" : "subject",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "subject"
        }]
      }]
    },
    {
      "name" : "EncounterType",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "encounter",
        "contextType" : "variable",
        "element" : "type",
        "variable" : "cc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableConcept"
        }]
      }],
      "rule" : [{
        "name" : "TypeCC",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "cc",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        }],
        "rule" : [{
          "name" : "TypeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://snomed.info/sct"
            }]
          },
          {
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "33879002"
            }]
          },
          {
            "context" : "coding",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Administration of vaccine to produce active immunity (procedure)"
            }]
          }]
        }]
      },
      {
        "name" : "TypeText",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "cc",
          "contextType" : "variable",
          "element" : "text",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "Vacunacion"
          }]
        }]
      }]
    },
    {
      "name" : "EncounterPeriod",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "encounter",
        "contextType" : "variable",
        "element" : "period",
        "variable" : "period",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Period"
        }]
      }],
      "rule" : [{
        "name" : "PeriodStart",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "period",
          "contextType" : "variable",
          "element" : "start",
          "transform" : "evaluate",
          "parameter" : [{
            "valueId" : "src"
          },
          {
            "valueString" : "now()"
          }]
        }]
      },
      {
        "name" : "PeriodEnd",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "period",
          "contextType" : "variable",
          "element" : "end",
          "transform" : "evaluate",
          "parameter" : [{
            "valueId" : "src"
          },
          {
            "valueString" : "now()"
          }]
        }]
      }]
    },
    {
      "name" : "EncounterLocation",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "((linkId = 'location-id') and answer.value.exists())"
      }],
      "rule" : [{
        "name" : "LocAnswer",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "CreateLoc",
          "source" : [{
            "context" : "answer",
            "element" : "value",
            "variable" : "locId"
          }],
          "target" : [{
            "context" : "encounter",
            "contextType" : "variable",
            "element" : "location",
            "variable" : "loc",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Encounter_Location"
            }]
          }],
          "rule" : [{
            "name" : "LocRef",
            "source" : [{
              "context" : "locId"
            }],
            "target" : [{
              "context" : "loc",
              "contextType" : "variable",
              "element" : "location",
              "variable" : "ref",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "Reference"
              }]
            }],
            "rule" : [{
              "name" : "LocReference",
              "source" : [{
                "context" : "locId"
              }],
              "target" : [{
                "context" : "ref",
                "contextType" : "variable",
                "element" : "reference",
                "transform" : "evaluate",
                "parameter" : [{
                  "valueId" : "locId"
                },
                {
                  "valueString" : "'Location/' + $this"
                }]
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "ExtractImmunization",
    "typeMode" : "none",
    "documentation" : "Extrae el recurso Immunization con datos de la vacuna administrada",
    "input" : [{
      "name" : "src",
      "type" : "QResp",
      "mode" : "source"
    },
    {
      "name" : "encounter",
      "type" : "Encounter",
      "mode" : "source"
    },
    {
      "name" : "immunization",
      "type" : "Immunization",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "ImmunizationStatic",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "immunization",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "uuid"
      },
      {
        "context" : "immunization",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "completed"
        }]
      },
      {
        "context" : "immunization",
        "contextType" : "variable",
        "element" : "recorded",
        "transform" : "evaluate",
        "parameter" : [{
          "valueId" : "src"
        },
        {
          "valueString" : "now()"
        }]
      },
      {
        "context" : "immunization",
        "contextType" : "variable",
        "element" : "patient",
        "transform" : "evaluate",
        "parameter" : [{
          "valueId" : "src"
        },
        {
          "valueString" : "subject"
        }]
      },
      {
        "context" : "immunization",
        "contextType" : "variable",
        "element" : "encounter",
        "transform" : "reference",
        "parameter" : [{
          "valueId" : "encounter"
        }]
      }]
    },
    {
      "name" : "VaccineCode",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'vaccine-code'"
      }],
      "rule" : [{
        "name" : "VaccineCodeAnswer",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "CreateVaccineCC",
          "source" : [{
            "context" : "answer",
            "element" : "value",
            "variable" : "coding"
          }],
          "target" : [{
            "context" : "immunization",
            "contextType" : "variable",
            "element" : "vaccineCode",
            "variable" : "cc",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          }],
          "rule" : [{
            "name" : "SetVaccineCoding",
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
            "name" : "SetVaccineText",
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
    },
    {
      "name" : "VaccinationDate",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'vaccination-date'"
      }],
      "rule" : [{
        "name" : "VaccineDateAnswer",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "SetOccurrence",
          "source" : [{
            "context" : "answer",
            "element" : "value",
            "variable" : "val"
          }],
          "target" : [{
            "contextType" : "variable",
            "variable" : "dt",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "dateTime"
            }]
          },
          {
            "context" : "dt",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "val"
            }]
          },
          {
            "context" : "immunization",
            "contextType" : "variable",
            "element" : "occurrence",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "dt"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "LotNumber",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'lot-number'"
      }],
      "rule" : [{
        "name" : "LotAnswer",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "SetLotNumber",
          "source" : [{
            "context" : "answer",
            "element" : "value",
            "variable" : "val"
          }],
          "target" : [{
            "context" : "immunization",
            "contextType" : "variable",
            "element" : "lotNumber",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "val"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "ExpirationDate",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'expiration-date'"
      }],
      "rule" : [{
        "name" : "ExpirationAnswer",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "SetExpirationDate",
          "source" : [{
            "context" : "answer",
            "element" : "value",
            "variable" : "val"
          }],
          "target" : [{
            "context" : "immunization",
            "contextType" : "variable",
            "element" : "expirationDate",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "val"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "DoseNumber",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'dose-number'"
      }],
      "rule" : [{
        "name" : "DoseAnswer",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "CreateProtocol",
          "source" : [{
            "context" : "answer",
            "element" : "value",
            "variable" : "val"
          }],
          "target" : [{
            "context" : "immunization",
            "contextType" : "variable",
            "element" : "protocolApplied",
            "variable" : "protocol",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Immunization_AppliedProtocol"
            }]
          }],
          "rule" : [{
            "name" : "SetDoseNumber",
            "source" : [{
              "context" : "val"
            }],
            "target" : [{
              "context" : "protocol",
              "contextType" : "variable",
              "element" : "doseNumber",
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
      "name" : "Route",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'route'"
      }],
      "rule" : [{
        "name" : "RouteAnswer",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "CreateRouteCC",
          "source" : [{
            "context" : "answer",
            "element" : "value",
            "variable" : "coding"
          }],
          "target" : [{
            "context" : "immunization",
            "contextType" : "variable",
            "element" : "route",
            "variable" : "cc",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "CodeableConcept"
            }]
          }],
          "rule" : [{
            "name" : "SetRouteCoding",
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
            "name" : "SetRouteText",
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
    },
    {
      "name" : "PerformerOrg",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "((linkId = 'performer-organization') and answer.value.exists())"
      }],
      "rule" : [{
        "name" : "OrgAnswer",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "CreatePerformer",
          "source" : [{
            "context" : "answer",
            "element" : "value",
            "variable" : "orgRef"
          }],
          "target" : [{
            "context" : "immunization",
            "contextType" : "variable",
            "element" : "performer",
            "variable" : "performer",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Immunization_Performer"
            }]
          }],
          "rule" : [{
            "name" : "CreateOrgRef",
            "source" : [{
              "context" : "orgRef"
            }],
            "target" : [{
              "context" : "performer",
              "contextType" : "variable",
              "element" : "actor",
              "variable" : "ref",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "Reference"
              }]
            }],
            "rule" : [{
              "name" : "SetOrgRef",
              "source" : [{
                "context" : "orgRef"
              }],
              "target" : [{
                "context" : "ref",
                "contextType" : "variable",
                "element" : "reference",
                "transform" : "evaluate",
                "parameter" : [{
                  "valueId" : "orgRef"
                },
                {
                  "valueString" : "'Organization/' + $this"
                }]
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "ExtractTaskCompleted",
    "typeMode" : "none",
    "documentation" : "Crea un Task con estado completado, vinculado al Encounter e Immunization",
    "input" : [{
      "name" : "src",
      "type" : "QResp",
      "mode" : "source"
    },
    {
      "name" : "encounter",
      "type" : "Encounter",
      "mode" : "source"
    },
    {
      "name" : "immunization",
      "type" : "Immunization",
      "mode" : "source"
    },
    {
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "TaskCompleted",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "((linkId = 'task-id') and answer.value.exists())"
      }],
      "rule" : [{
        "name" : "TaskIdAnswer",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "CreateTask",
          "source" : [{
            "context" : "answer",
            "element" : "value",
            "variable" : "taskId"
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
            "variable" : "task",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Task"
            }]
          }],
          "rule" : [{
            "name" : "SetTaskId",
            "source" : [{
              "context" : "taskId"
            }],
            "target" : [{
              "context" : "task",
              "contextType" : "variable",
              "element" : "id",
              "variable" : "id",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "id"
              }]
            },
            {
              "context" : "id",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "taskId"
              }]
            }]
          },
          {
            "name" : "TaskCompleted",
            "source" : [{
              "context" : "taskId"
            }],
            "target" : [{
              "context" : "task",
              "contextType" : "variable",
              "element" : "status",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "completed"
              }]
            }]
          },
          {
            "name" : "TaskOutputEnc",
            "source" : [{
              "context" : "taskId"
            }],
            "target" : [{
              "context" : "task",
              "contextType" : "variable",
              "element" : "output",
              "variable" : "outputEnc",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "Task_Output"
              }]
            }],
            "rule" : [{
              "name" : "OutputEncType",
              "source" : [{
                "context" : "taskId"
              }],
              "target" : [{
                "context" : "outputEnc",
                "contextType" : "variable",
                "element" : "type",
                "variable" : "cc",
                "transform" : "create",
                "parameter" : [{
                  "valueString" : "CodeableConcept"
                }]
              }],
              "rule" : [{
                "name" : "OutputEncTypeCoding",
                "source" : [{
                  "context" : "taskId"
                }],
                "target" : [{
                  "context" : "cc",
                  "contextType" : "variable",
                  "element" : "coding",
                  "transform" : "c",
                  "parameter" : [{
                    "valueString" : "http://snomed.info/sct"
                  },
                  {
                    "valueString" : "41000179103"
                  },
                  {
                    "valueString" : "Immunization record (record artifact)"
                  }]
                }]
              }]
            },
            {
              "name" : "OutputEncValue",
              "source" : [{
                "context" : "encounter"
              }],
              "target" : [{
                "context" : "outputEnc",
                "contextType" : "variable",
                "element" : "value",
                "transform" : "reference",
                "parameter" : [{
                  "valueId" : "encounter"
                }]
              }]
            }]
          },
          {
            "name" : "TaskOutputImm",
            "source" : [{
              "context" : "taskId"
            }],
            "target" : [{
              "context" : "task",
              "contextType" : "variable",
              "element" : "output",
              "variable" : "outputImm",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "Task_Output"
              }]
            }],
            "rule" : [{
              "name" : "OutputImmType",
              "source" : [{
                "context" : "taskId"
              }],
              "target" : [{
                "context" : "outputImm",
                "contextType" : "variable",
                "element" : "type",
                "variable" : "cc",
                "transform" : "create",
                "parameter" : [{
                  "valueString" : "CodeableConcept"
                }]
              }],
              "rule" : [{
                "name" : "OutputImmTypeCoding",
                "source" : [{
                  "context" : "taskId"
                }],
                "target" : [{
                  "context" : "cc",
                  "contextType" : "variable",
                  "element" : "coding",
                  "transform" : "c",
                  "parameter" : [{
                    "valueString" : "http://snomed.info/sct"
                  },
                  {
                    "valueString" : "41000179103"
                  },
                  {
                    "valueString" : "Immunization record (record artifact)"
                  }]
                }]
              }]
            },
            {
              "name" : "OutputImmValue",
              "source" : [{
                "context" : "immunization"
              }],
              "target" : [{
                "context" : "outputImm",
                "contextType" : "variable",
                "element" : "value",
                "transform" : "reference",
                "parameter" : [{
                  "valueId" : "immunization"
                }]
              }]
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "ExtractTaskFailed",
    "typeMode" : "none",
    "documentation" : "Crea un Task con estado fallido cuando la vacuna no fue administrada",
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
      "name" : "TaskFailed",
      "source" : [{
        "context" : "src",
        "element" : "item",
        "variable" : "item",
        "condition" : "((linkId = 'task-id') and answer.value.exists())"
      }],
      "rule" : [{
        "name" : "FailedTaskIdAnswer",
        "source" : [{
          "context" : "item",
          "element" : "answer",
          "listMode" : "first",
          "variable" : "answer"
        }],
        "rule" : [{
          "name" : "CreateFailedTask",
          "source" : [{
            "context" : "answer",
            "element" : "value",
            "variable" : "taskId"
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
            "variable" : "task",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Task"
            }]
          }],
          "rule" : [{
            "name" : "SetFailedTaskId",
            "source" : [{
              "context" : "taskId"
            }],
            "target" : [{
              "context" : "task",
              "contextType" : "variable",
              "element" : "id",
              "variable" : "id",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "id"
              }]
            },
            {
              "context" : "id",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "taskId"
              }]
            }]
          },
          {
            "name" : "TaskFailed",
            "source" : [{
              "context" : "taskId"
            }],
            "target" : [{
              "context" : "task",
              "contextType" : "variable",
              "element" : "status",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "failed"
              }]
            }]
          }]
        }]
      }]
    }]
  }]
}

```

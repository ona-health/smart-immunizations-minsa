# MINSA.EventoAdverso.QRToObservation - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MINSA.EventoAdverso.QRToObservation**

## StructureMap: MINSA.EventoAdverso.QRToObservation 

| | |
| :--- | :--- |
| *Official URL*:http://minsa.gob.pe/immunizations/StructureMap/MINSA.EventoAdverso.QRToObservation | *Version*:1.0.0 |
| Draft as of 2026-03-16 | *Computable Name*:MINSA.EventoAdverso.QRToObservation |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "MINSA.EventoAdverso.QRToObservation",
  "url" : "http://minsa.gob.pe/immunizations/StructureMap/MINSA.EventoAdverso.QRToObservation",
  "version" : "1.0.0",
  "name" : "MINSA.EventoAdverso.QRToObservation",
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
    "name" : "EventoAdverso",
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
        "variable" : "encEntry"
      },
      {
        "context" : "encEntry",
        "contextType" : "variable",
        "element" : "resource",
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
        "name" : "ExtractObservation",
        "source" : [{
          "context" : "src"
        }],
        "dependent" : [{
          "name" : "ExtractObservation",
          "variable" : ["src", "encounter", "bundle"]
        }]
      }]
    }]
  },
  {
    "name" : "ExtractEncounter",
    "typeMode" : "none",
    "documentation" : "Extrae el Encounter de la consulta por evento adverso",
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
              "valueString" : "886921000000105"
            }]
          },
          {
            "context" : "coding",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Allergies and adverse reactions"
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
            "valueString" : "Evento adverso post-vacunal"
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
    }]
  },
  {
    "name" : "ExtractObservation",
    "typeMode" : "none",
    "documentation" : "Extrae la Observation que representa el evento adverso",
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
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "ObservationEntry",
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
        "variable" : "obs",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Observation"
        }]
      }],
      "rule" : [{
        "name" : "ObsStatic",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "id",
          "transform" : "uuid"
        },
        {
          "context" : "obs",
          "contextType" : "variable",
          "element" : "status",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "final"
          }]
        },
        {
          "context" : "obs",
          "contextType" : "variable",
          "element" : "encounter",
          "transform" : "reference",
          "parameter" : [{
            "valueId" : "encounter"
          }]
        }]
      },
      {
        "name" : "ObsSubject",
        "source" : [{
          "context" : "src",
          "element" : "subject",
          "variable" : "subject"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "subject"
          }]
        }]
      },
      {
        "name" : "ObsCategory",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "category",
          "variable" : "cat",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "CatCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cat",
            "contextType" : "variable",
            "element" : "coding",
            "transform" : "c",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
            },
            {
              "valueString" : "survey"
            },
            {
              "valueString" : "Survey"
            }]
          }]
        }]
      },
      {
        "name" : "ObsCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "code",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "CodeCC",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "code",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Coding"
            }]
          }],
          "rule" : [{
            "name" : "CodeCoding",
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
                "valueString" : "293104008"
              }]
            },
            {
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Adverse reaction to vaccine (disorder)"
              }]
            }]
          }]
        },
        {
          "name" : "CodeText",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "code",
            "contextType" : "variable",
            "element" : "text",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Evento Supuestamente Atribuido a Vacunacion o Inmunizacion (ESAVI)"
            }]
          }]
        }]
      },
      {
        "name" : "AdverseEventDate",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "item",
          "condition" : "linkId = 'adverse-event-date'"
        }],
        "rule" : [{
          "name" : "DateAnswer",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "SetEffective",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "obs",
              "contextType" : "variable",
              "element" : "effective",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "val"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "AdverseEventType",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "item",
          "condition" : "linkId = 'adverse-event-type'"
        }],
        "rule" : [{
          "name" : "TypeAnswer",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "CreateTypeCC",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "coding"
            }],
            "target" : [{
              "context" : "obs",
              "contextType" : "variable",
              "element" : "value",
              "variable" : "cc",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "CodeableConcept"
              }]
            }],
            "rule" : [{
              "name" : "SetTypeCoding",
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
              "name" : "SetTypeText",
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
        "name" : "AdverseEventSeverity",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "item",
          "condition" : "linkId = 'adverse-event-severity'"
        }],
        "rule" : [{
          "name" : "SeverityAnswer",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "CreateSeverityComp",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "coding"
            }],
            "target" : [{
              "context" : "obs",
              "contextType" : "variable",
              "element" : "component",
              "variable" : "comp",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "Observation_Component"
              }]
            }],
            "rule" : [{
              "name" : "SeverityCode",
              "source" : [{
                "context" : "coding"
              }],
              "target" : [{
                "context" : "comp",
                "contextType" : "variable",
                "element" : "code",
                "variable" : "compCode",
                "transform" : "create",
                "parameter" : [{
                  "valueString" : "CodeableConcept"
                }]
              }],
              "rule" : [{
                "name" : "SeverityCodeCC",
                "source" : [{
                  "context" : "coding"
                }],
                "target" : [{
                  "context" : "compCode",
                  "contextType" : "variable",
                  "element" : "coding",
                  "variable" : "compCoding",
                  "transform" : "create",
                  "parameter" : [{
                    "valueString" : "Coding"
                  }]
                }],
                "rule" : [{
                  "name" : "SeverityCodeCoding",
                  "source" : [{
                    "context" : "coding"
                  }],
                  "target" : [{
                    "context" : "compCoding",
                    "contextType" : "variable",
                    "element" : "system",
                    "transform" : "copy",
                    "parameter" : [{
                      "valueString" : "http://snomed.info/sct"
                    }]
                  },
                  {
                    "context" : "compCoding",
                    "contextType" : "variable",
                    "element" : "code",
                    "transform" : "copy",
                    "parameter" : [{
                      "valueString" : "246112005"
                    }]
                  },
                  {
                    "context" : "compCoding",
                    "contextType" : "variable",
                    "element" : "display",
                    "transform" : "copy",
                    "parameter" : [{
                      "valueString" : "Severity (attribute)"
                    }]
                  }]
                }]
              }]
            },
            {
              "name" : "SeverityValue",
              "source" : [{
                "context" : "coding"
              }],
              "target" : [{
                "context" : "comp",
                "contextType" : "variable",
                "element" : "value",
                "variable" : "compVal",
                "transform" : "create",
                "parameter" : [{
                  "valueString" : "CodeableConcept"
                }]
              }],
              "rule" : [{
                "name" : "SetSeverityCoding",
                "source" : [{
                  "context" : "coding"
                }],
                "target" : [{
                  "context" : "compVal",
                  "contextType" : "variable",
                  "element" : "coding",
                  "transform" : "copy",
                  "parameter" : [{
                    "valueId" : "coding"
                  }]
                }]
              },
              {
                "name" : "SetSeverityText",
                "source" : [{
                  "context" : "coding",
                  "element" : "display",
                  "variable" : "display"
                }],
                "target" : [{
                  "context" : "compVal",
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
        "name" : "CausingImmunization",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "item",
          "condition" : "((linkId = 'causing-immunization') and answer.value.exists())"
        }],
        "rule" : [{
          "name" : "ImmAnswer",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "CreateImmRef",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "immRef"
            }],
            "target" : [{
              "context" : "obs",
              "contextType" : "variable",
              "element" : "focus",
              "variable" : "ref",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "Reference"
              }]
            }],
            "rule" : [{
              "name" : "SetImmReference",
              "source" : [{
                "context" : "immRef"
              }],
              "target" : [{
                "context" : "ref",
                "contextType" : "variable",
                "element" : "reference",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "immRef"
                }]
              }]
            }]
          }]
        }]
      },
      {
        "name" : "AdverseEventNotes",
        "source" : [{
          "context" : "src",
          "element" : "item",
          "variable" : "item",
          "condition" : "((linkId = 'adverse-event-notes') and answer.value.exists())"
        }],
        "rule" : [{
          "name" : "NotesAnswer",
          "source" : [{
            "context" : "item",
            "element" : "answer",
            "listMode" : "first",
            "variable" : "answer"
          }],
          "rule" : [{
            "name" : "CreateNote",
            "source" : [{
              "context" : "answer",
              "element" : "value",
              "variable" : "val"
            }],
            "target" : [{
              "context" : "obs",
              "contextType" : "variable",
              "element" : "note",
              "variable" : "note",
              "transform" : "create",
              "parameter" : [{
                "valueString" : "Annotation"
              }]
            }],
            "rule" : [{
              "name" : "SetNoteText",
              "source" : [{
                "context" : "val"
              }],
              "target" : [{
                "context" : "note",
                "contextType" : "variable",
                "element" : "text",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "val"
                }]
              }]
            },
            {
              "name" : "SetNoteTime",
              "source" : [{
                "context" : "val"
              }],
              "target" : [{
                "context" : "note",
                "contextType" : "variable",
                "element" : "time",
                "transform" : "evaluate",
                "parameter" : [{
                  "valueId" : "src"
                },
                {
                  "valueString" : "now()"
                }]
              }]
            }]
          }]
        }]
      }]
    }]
  }]
}

```

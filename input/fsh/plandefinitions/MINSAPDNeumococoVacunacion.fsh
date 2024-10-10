// ABOUTME: PlanDefinition para la logica de decision de vacunacion antineumococica (PCV) segun MINSA Peru.
// ABOUTME: Define las condiciones para 2 dosis primarias (2, 4 meses) y 1 refuerzo (12 meses).

Instance: MINSANeumococoVacunacion
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "MINSA - Vacunacion contra Neumococo (PCV)"
Description: """
Logica de decision para la vacunacion antineumococica conjugada segun el Esquema Nacional de
Vacunacion del Peru. Esquema 2+1: dos dosis primarias a los 2 y 4 meses de edad, con una
dosis de refuerzo a los 12 meses.
"""
Usage: #definition

* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* url = "http://minsa.gob.pe/immunizations/PlanDefinition/MINSANeumococoVacunacion"
* version = "1.0.0"
* name = "MINSANeumococoVacunacion"
* status = #active
* experimental = false
* publisher = "MINSA - Ministerio de Salud del Peru"
* jurisdiction = urn:iso:std:iso:3166#PE "Peru"
* relatedArtifact[+]
  * type = #citation
  * citation = "NTS N 196-MINSA/DGIESP-2022: Norma Tecnica de Salud que establece el Esquema Nacional de Vacunacion"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose"
  * display = "WHO SMART Guidelines - Pneumococcal 2 Doses with Booster Decision Table"

// Accion: Primera dosis Neumococo - 2 meses
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """La vacuna antineumococica conjugada protege contra la enfermedad
      invasiva por Streptococcus pneumoniae (meningitis, neumonia, sepsis). Peru utiliza
      el esquema 2+1 recomendado por la OMS: 2 dosis primarias con 1 dosis de refuerzo."""
  * title = "Determinar si el nino necesita la 1ra dosis de Neumococo"
  * description = """Evaluar si el nino de 2 meses cumple las condiciones para recibir la primera
    dosis de vacuna antineumococica conjugada segun el protocolo nacional."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente tiene 2 meses o mas y no ha recibido la 1ra dosis de Neumococo"
      * language = #text/cql-identifier
      * expression = "Paciente necesita 1ra dosis de Neumococo"
  * dynamicValue[+]
    * path = "status"
    * expression
      * language = #text/cql-expression
      * expression = "'draft'"
  * dynamicValue[+]
    * path = "intent"
    * expression
      * language = #text/cql-expression
      * expression = "'proposal'"

// Accion: Segunda dosis Neumococo - 4 meses
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """Segunda dosis primaria de la vacuna antineumococica conjugada a los
      4 meses de edad. Intervalo minimo de 8 semanas desde la primera dosis."""
  * title = "Determinar si el nino necesita la 2da dosis de Neumococo"
  * description = """Evaluar si el nino de 4 meses cumple las condiciones para recibir la segunda
    dosis de vacuna antineumococica conjugada segun el protocolo nacional."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente tiene 4 meses o mas, ha recibido la 1ra dosis y no ha recibido la 2da dosis de Neumococo"
      * language = #text/cql-identifier
      * expression = "Paciente necesita 2da dosis de Neumococo"
  * dynamicValue[+]
    * path = "status"
    * expression
      * language = #text/cql-expression
      * expression = "'draft'"
  * dynamicValue[+]
    * path = "intent"
    * expression
      * language = #text/cql-expression
      * expression = "'proposal'"

// Accion: Dosis de refuerzo Neumococo - 12 meses
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """Dosis de refuerzo de la vacuna antineumococica conjugada a los 12 meses
      de edad. Esta dosis es esencial para mantener la proteccion a largo plazo. Los lactantes
      con VIH y prematuros pueden beneficiarse especialmente de esta dosis de refuerzo."""
  * title = "Determinar si el nino necesita la dosis de refuerzo de Neumococo"
  * description = """Evaluar si el nino de 12 meses cumple las condiciones para recibir la dosis
    de refuerzo de vacuna antineumococica conjugada segun el protocolo nacional."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente tiene 12 meses o mas, ha recibido 2 dosis primarias y no ha recibido el refuerzo de Neumococo"
      * language = #text/cql-identifier
      * expression = "Paciente necesita refuerzo de Neumococo"
  * dynamicValue[+]
    * path = "status"
    * expression
      * language = #text/cql-expression
      * expression = "'draft'"
  * dynamicValue[+]
    * path = "intent"
    * expression
      * language = #text/cql-expression
      * expression = "'proposal'"

// ABOUTME: PlanDefinition para la logica de decision de vacunacion Pentavalente (DPT-HepB-Hib) segun MINSA Peru.
// ABOUTME: Define las condiciones para las 3 dosis a los 2, 4 y 6 meses de edad.

Instance: MINSAPentavalenteVacunacion
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "MINSA - Vacunacion Pentavalente (DPT-HepB-Hib)"
Description: """
Logica de decision para la vacunacion Pentavalente segun el Esquema Nacional de Vacunacion del Peru.
La vacuna Pentavalente (DPT-HepB-Hib) se administra en 3 dosis a los 2, 4 y 6 meses de edad,
con un intervalo minimo de 8 semanas entre dosis.
"""
Usage: #definition

* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* url = "http://minsa.gob.pe/immunizations/PlanDefinition/MINSAPentavalenteVacunacion"
* version = "1.0.0"
* name = "MINSAPentavalenteVacunacion"
* status = #active
* experimental = false
* publisher = "MINSA - Ministerio de Salud del Peru"
* jurisdiction = urn:iso:std:iso:3166#PE "Peru"
* relatedArtifact[+]
  * type = #citation
  * citation = "NTS N 196-MINSA/DGIESP-2022: Norma Tecnica de Salud que establece el Esquema Nacional de Vacunacion"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTDTPOnTimeStart"
  * display = "WHO SMART Guidelines - DTP Decision Table (On Time Start)"

// Accion: Primera dosis Pentavalente - 2 meses
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """La vacuna Pentavalente combina la proteccion contra difteria, tetanos,
      tos ferina, hepatitis B y Haemophilus influenzae tipo b. Se inicia a los 2 meses de edad
      como parte del esquema primario de vacunacion infantil."""
  * title = "Determinar si el nino necesita la 1ra dosis de Pentavalente"
  * description = """Evaluar si el nino de 2 meses cumple las condiciones para recibir la primera
    dosis de vacuna Pentavalente segun el protocolo nacional."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente tiene 2 meses o mas y no ha recibido la 1ra dosis de Pentavalente"
      * language = #text/cql-identifier
      * expression = "Paciente necesita 1ra dosis de Pentavalente"
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

// Accion: Segunda dosis Pentavalente - 4 meses
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """Segunda dosis del esquema primario de Pentavalente. Se administra a los
      4 meses de edad, con un intervalo minimo de 8 semanas desde la primera dosis."""
  * title = "Determinar si el nino necesita la 2da dosis de Pentavalente"
  * description = """Evaluar si el nino de 4 meses cumple las condiciones para recibir la segunda
    dosis de vacuna Pentavalente segun el protocolo nacional."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente tiene 4 meses o mas, ha recibido la 1ra dosis y no ha recibido la 2da dosis de Pentavalente"
      * language = #text/cql-identifier
      * expression = "Paciente necesita 2da dosis de Pentavalente"
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

// Accion: Tercera dosis Pentavalente - 6 meses
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """Tercera dosis del esquema primario de Pentavalente. Se administra a los
      6 meses de edad, completando la serie primaria. El intervalo minimo desde la segunda
      dosis es de 8 semanas."""
  * title = "Determinar si el nino necesita la 3ra dosis de Pentavalente"
  * description = """Evaluar si el nino de 6 meses cumple las condiciones para recibir la tercera
    dosis de vacuna Pentavalente segun el protocolo nacional."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente tiene 6 meses o mas, ha recibido la 2da dosis y no ha recibido la 3ra dosis de Pentavalente"
      * language = #text/cql-identifier
      * expression = "Paciente necesita 3ra dosis de Pentavalente"
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

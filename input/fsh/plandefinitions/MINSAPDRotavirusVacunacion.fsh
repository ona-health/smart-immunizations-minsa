// ABOUTME: PlanDefinition para la logica de decision de vacunacion contra Rotavirus segun MINSA Peru.
// ABOUTME: Define las condiciones para las 2 dosis a los 2 y 4 meses de edad.

Instance: MINSARotavirusVacunacion
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "MINSA - Vacunacion contra Rotavirus"
Description: """
Logica de decision para la vacunacion contra Rotavirus segun el Esquema Nacional de Vacunacion
del Peru. Se administran 2 dosis a los 2 y 4 meses de edad. La primera dosis no debe
administrarse despues de las 15 semanas de vida.
"""
Usage: #definition

* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* url = "http://minsa.gob.pe/immunizations/PlanDefinition/MINSARotavirusVacunacion"
* version = "1.0.0"
* name = "MINSARotavirusVacunacion"
* status = #active
* experimental = false
* publisher = "MINSA - Ministerio de Salud del Peru"
* jurisdiction = urn:iso:std:iso:3166#PE "Peru"
* relatedArtifact[+]
  * type = #citation
  * citation = "NTS N 196-MINSA/DGIESP-2022: Norma Tecnica de Salud que establece el Esquema Nacional de Vacunacion"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTRotavirus"
  * display = "WHO SMART Guidelines - Rotavirus Decision Table"

// Accion: Primera dosis Rotavirus - 2 meses
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """La vacuna contra Rotavirus previene la diarrea grave por rotavirus en
      lactantes. La primera dosis se administra a los 2 meses de edad (edad minima 6 semanas).
      La primera dosis no debe administrarse despues de las 15 semanas de vida. La serie debe
      completarse con el mismo producto siempre que sea posible."""
  * title = "Determinar si el nino necesita la 1ra dosis de Rotavirus"
  * description = """Evaluar si el nino de 2 meses cumple las condiciones para recibir la primera
    dosis de vacuna contra Rotavirus segun el protocolo nacional."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente tiene 2 meses o mas, no supera las 15 semanas de vida, y no ha recibido la 1ra dosis de Rotavirus"
      * language = #text/cql-identifier
      * expression = "Paciente necesita 1ra dosis de Rotavirus"
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

// Accion: Segunda dosis Rotavirus - 4 meses
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """Segunda dosis de Rotavirus a los 4 meses de edad, con un intervalo
      minimo de 4 semanas desde la primera dosis. Esta dosis completa el esquema de Rotavirus."""
  * title = "Determinar si el nino necesita la 2da dosis de Rotavirus"
  * description = """Evaluar si el nino de 4 meses cumple las condiciones para recibir la segunda
    dosis de vacuna contra Rotavirus segun el protocolo nacional."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente tiene 4 meses o mas, ha recibido la 1ra dosis y no ha recibido la 2da dosis de Rotavirus"
      * language = #text/cql-identifier
      * expression = "Paciente necesita 2da dosis de Rotavirus"
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

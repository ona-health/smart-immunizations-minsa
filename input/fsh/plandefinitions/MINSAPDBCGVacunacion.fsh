// ABOUTME: PlanDefinition para la logica de decision de vacunacion BCG segun el esquema MINSA Peru.
// ABOUTME: Define las condiciones de aplicabilidad para la dosis unica de BCG al recien nacido.

Instance: MINSABCGVacunacion
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "MINSA - Vacunacion BCG"
Description: """
Logica de decision para la vacunacion BCG segun el Esquema Nacional de Vacunacion del Peru.
La vacuna BCG se administra en dosis unica al recien nacido, preferiblemente dentro de las
primeras 24 horas de vida.
"""
Usage: #definition

* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* url = "http://minsa.gob.pe/immunizations/PlanDefinition/MINSABCGVacunacion"
* version = "1.0.0"
* name = "MINSABCGVacunacion"
* status = #active
* experimental = false
* publisher = "MINSA - Ministerio de Salud del Peru"
* jurisdiction = urn:iso:std:iso:3166#PE "Peru"
* relatedArtifact[+]
  * type = #citation
  * citation = "NTS N 196-MINSA/DGIESP-2022: Norma Tecnica de Salud que establece el Esquema Nacional de Vacunacion"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTBCG"
  * display = "WHO SMART Guidelines - BCG Decision Table"

// Accion: Determinar si el recien nacido necesita vacuna BCG
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """La vacuna BCG protege contra las formas graves de tuberculosis
      (meningitis tuberculosa y tuberculosis miliar). Se administra en dosis unica al recien
      nacido. En recien nacidos de madres con VIH, se debe evaluar el estado clinico antes
      de la vacunacion."""
  * title = "Determinar si el recien nacido necesita vacunacion BCG"
  * description = """Evaluar si el recien nacido cumple las condiciones para recibir la vacuna BCG
    segun el protocolo nacional de inmunizaciones."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente es recien nacido y no ha recibido vacuna BCG"
      * language = #text/cql-identifier
      * expression = "Paciente necesita vacuna BCG"
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

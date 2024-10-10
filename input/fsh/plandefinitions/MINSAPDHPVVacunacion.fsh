// ABOUTME: PlanDefinition para la logica de decision de vacunacion contra VPH segun MINSA Peru.
// ABOUTME: Define las condiciones para 2 dosis en ninas de 9 a 13 anos con intervalo de 6 meses.

Instance: MINSAHPVVacunacion
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "MINSA - Vacunacion contra VPH (Virus del Papiloma Humano)"
Description: """
Logica de decision para la vacunacion contra el Virus del Papiloma Humano (VPH) segun el
Esquema Nacional de Vacunacion del Peru. Se administran 2 dosis a ninas de 9 a 13 anos
de edad, con un intervalo de 6 meses entre dosis.
"""
Usage: #definition

* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* url = "http://minsa.gob.pe/immunizations/PlanDefinition/MINSAHPVVacunacion"
* version = "1.0.0"
* name = "MINSAHPVVacunacion"
* status = #active
* experimental = false
* publisher = "MINSA - Ministerio de Salud del Peru"
* jurisdiction = urn:iso:std:iso:3166#PE "Peru"
* relatedArtifact[+]
  * type = #citation
  * citation = "NTS N 196-MINSA/DGIESP-2022: Norma Tecnica de Salud que establece el Esquema Nacional de Vacunacion"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHPV2Doses"
  * display = "WHO SMART Guidelines - HPV 2 Doses Decision Table"

// Accion: Primera dosis VPH - ninas 9-13 anos
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """La vacuna contra el VPH previene la infeccion por los tipos de VPH
      que causan cancer de cuello uterino. En Peru se aplica a ninas de 9 a 13 anos con un
      esquema de 2 dosis. La vacunacion antes del inicio de la actividad sexual proporciona
      la maxima proteccion."""
  * title = "Determinar si la paciente necesita la 1ra dosis de VPH"
  * description = """Evaluar si la paciente (sexo femenino, 9-13 anos) cumple las condiciones
    para recibir la primera dosis de vacuna contra VPH segun el protocolo nacional."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "La paciente es de sexo femenino, tiene entre 9 y 13 anos, y no ha recibido la 1ra dosis de VPH"
      * language = #text/cql-identifier
      * expression = "Paciente necesita 1ra dosis de VPH"
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

// Accion: Segunda dosis VPH - 6 meses despues de la primera
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """Segunda dosis de VPH con un intervalo minimo de 6 meses desde la
      primera dosis. Con 2 dosis se logra una respuesta inmune robusta y duradera en
      la poblacion objetivo de 9 a 13 anos."""
  * title = "Determinar si la paciente necesita la 2da dosis de VPH"
  * description = """Evaluar si la paciente cumple las condiciones para recibir la segunda dosis
    de vacuna contra VPH, con al menos 6 meses desde la primera dosis."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "La paciente ha recibido la 1ra dosis de VPH, han pasado al menos 6 meses, y no ha recibido la 2da dosis"
      * language = #text/cql-identifier
      * expression = "Paciente necesita 2da dosis de VPH"
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

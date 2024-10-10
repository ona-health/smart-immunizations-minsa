// ABOUTME: PlanDefinition para la logica de decision de vacunacion SPR (Sarampion-Paperas-Rubeola) segun MINSA Peru.
// ABOUTME: Define las condiciones para la dosis a los 12 meses y el refuerzo a los 18 meses.

Instance: MINSASPRVacunacion
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "MINSA - Vacunacion SPR (Sarampion-Paperas-Rubeola)"
Description: """
Logica de decision para la vacunacion SPR (Sarampion, Paperas, Rubeola) segun el Esquema
Nacional de Vacunacion del Peru. Se administra la primera dosis a los 12 meses de edad
y una dosis de refuerzo a los 18 meses.
"""
Usage: #definition

* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* url = "http://minsa.gob.pe/immunizations/PlanDefinition/MINSASPRVacunacion"
* version = "1.0.0"
* name = "MINSASPRVacunacion"
* status = #active
* experimental = false
* publisher = "MINSA - Ministerio de Salud del Peru"
* jurisdiction = urn:iso:std:iso:3166#PE "Peru"
* relatedArtifact[+]
  * type = #citation
  * citation = "NTS N 196-MINSA/DGIESP-2022: Norma Tecnica de Salud que establece el Esquema Nacional de Vacunacion"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTMeaslesLowTransmission"
  * display = "WHO SMART Guidelines - Measles Low Transmission Decision Table"

// Accion: Primera dosis SPR - 12 meses
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """La vacuna SPR (triple virica) protege contra sarampion, paperas y
      rubeola. La primera dosis se administra a los 12 meses de edad, cuando los anticuerpos
      maternos han disminuido suficientemente para permitir una respuesta inmune adecuada."""
  * title = "Determinar si el nino necesita la 1ra dosis de SPR"
  * description = """Evaluar si el nino de 12 meses cumple las condiciones para recibir la primera
    dosis de vacuna SPR segun el protocolo nacional de inmunizaciones."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente tiene 12 meses o mas y no ha recibido la 1ra dosis de SPR"
      * language = #text/cql-identifier
      * expression = "Paciente necesita 1ra dosis de SPR"
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

// Accion: Refuerzo SPR - 18 meses
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """La dosis de refuerzo de SPR a los 18 meses asegura la proteccion a
      largo plazo. Aproximadamente el 5% de los ninos no responden a la primera dosis,
      por lo que la segunda dosis garantiza la inmunidad de la poblacion."""
  * title = "Determinar si el nino necesita la dosis de refuerzo de SPR"
  * description = """Evaluar si el nino de 18 meses cumple las condiciones para recibir la dosis
    de refuerzo de vacuna SPR segun el protocolo nacional de inmunizaciones."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente tiene 18 meses o mas, ha recibido la 1ra dosis y no ha recibido el refuerzo de SPR"
      * language = #text/cql-identifier
      * expression = "Paciente necesita refuerzo de SPR"
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

// ABOUTME: PlanDefinition para la logica de decision de vacunacion contra Poliomielitis segun MINSA Peru.
// ABOUTME: Define el esquema combinado IPV (2, 4 meses) + APO (6, 18 meses) + refuerzo APO (4 anos).

Instance: MINSAPolioVacunacion
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "MINSA - Vacunacion contra Poliomielitis (IPV/APO)"
Description: """
Logica de decision para la vacunacion contra Poliomielitis segun el Esquema Nacional de Vacunacion
del Peru. Esquema secuencial: IPV (inyectable) a los 2 y 4 meses, APO (oral) a los 6 y 18 meses,
y refuerzo con APO a los 4 anos de edad.
"""
Usage: #definition

* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* url = "http://minsa.gob.pe/immunizations/PlanDefinition/MINSAPolioVacunacion"
* version = "1.0.0"
* name = "MINSAPolioVacunacion"
* status = #active
* experimental = false
* publisher = "MINSA - Ministerio de Salud del Peru"
* jurisdiction = urn:iso:std:iso:3166#PE "Peru"
* relatedArtifact[+]
  * type = #citation
  * citation = "NTS N 196-MINSA/DGIESP-2022: Norma Tecnica de Salud que establece el Esquema Nacional de Vacunacion"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTPolioBOPVPlusIPV"
  * display = "WHO SMART Guidelines - Polio bOPV plus IPV Decision Table"

// Accion: 1ra dosis IPV - 2 meses
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """Peru utiliza un esquema secuencial de vacunacion contra Poliomielitis.
      Las dos primeras dosis se administran con vacuna inactivada (IPV) por via intramuscular
      para minimizar el riesgo de poliomielitis asociada a la vacuna."""
  * title = "Determinar si el nino necesita la 1ra dosis de IPV"
  * description = """Evaluar si el nino de 2 meses cumple las condiciones para recibir la primera
    dosis de vacuna IPV (inactivada) contra Poliomielitis."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente tiene 2 meses o mas y no ha recibido la 1ra dosis de IPV"
      * language = #text/cql-identifier
      * expression = "Paciente necesita 1ra dosis de IPV"
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

// Accion: 2da dosis IPV - 4 meses
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """Segunda dosis de IPV a los 4 meses. Con esta dosis se completa la serie
      de vacuna inactivada antes de continuar con APO oral."""
  * title = "Determinar si el nino necesita la 2da dosis de IPV"
  * description = """Evaluar si el nino de 4 meses cumple las condiciones para recibir la segunda
    dosis de vacuna IPV (inactivada) contra Poliomielitis."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente tiene 4 meses o mas, ha recibido la 1ra dosis de IPV y no ha recibido la 2da dosis"
      * language = #text/cql-identifier
      * expression = "Paciente necesita 2da dosis de IPV"
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

// Accion: 3ra dosis APO - 6 meses
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """A partir de la tercera dosis se utiliza la vacuna oral (APO/bOPV)
      que contribuye a la inmunidad de mucosas y a la proteccion comunitaria."""
  * title = "Determinar si el nino necesita la 3ra dosis de Polio (APO)"
  * description = """Evaluar si el nino de 6 meses cumple las condiciones para recibir la tercera
    dosis de vacuna contra Poliomielitis (APO oral)."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente tiene 6 meses o mas, ha recibido 2 dosis de IPV y no ha recibido la 3ra dosis (APO)"
      * language = #text/cql-identifier
      * expression = "Paciente necesita 3ra dosis de Polio APO"
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

// Accion: 1er refuerzo APO - 18 meses
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """Primer refuerzo con APO oral a los 18 meses de edad para
      fortalecer la inmunidad contra Poliomielitis."""
  * title = "Determinar si el nino necesita el 1er refuerzo de Polio (APO)"
  * description = """Evaluar si el nino de 18 meses cumple las condiciones para recibir el primer
    refuerzo de vacuna APO contra Poliomielitis."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente tiene 18 meses o mas, ha completado la serie primaria y no ha recibido el 1er refuerzo"
      * language = #text/cql-identifier
      * expression = "Paciente necesita 1er refuerzo de Polio APO"
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

// Accion: 2do refuerzo APO - 4 anos
* action[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale"
    * valueMarkdown = """Segundo refuerzo con APO oral a los 4 anos de edad, completando
      el esquema de vacunacion contra Poliomielitis."""
  * title = "Determinar si el nino necesita el 2do refuerzo de Polio (APO)"
  * description = """Evaluar si el nino de 4 anos cumple las condiciones para recibir el segundo
    refuerzo de vacuna APO contra Poliomielitis."""
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente tiene 4 anos o mas, ha recibido el 1er refuerzo y no ha recibido el 2do refuerzo"
      * language = #text/cql-identifier
      * expression = "Paciente necesita 2do refuerzo de Polio APO"
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

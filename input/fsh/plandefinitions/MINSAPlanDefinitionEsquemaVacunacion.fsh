// ABOUTME: PlanDefinition maestro del Esquema Nacional de Vacunacion infantil de Peru (MINSA).
// ABOUTME: Referencia todas las PlanDefinitions individuales por antigeno del programa de inmunizaciones.

Instance: MINSAEsquemaVacunacion
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "Esquema Nacional de Vacunacion - MINSA Peru"
Description: """
Esquema Nacional de Vacunacion del Ministerio de Salud del Peru (MINSA).
Define el calendario de inmunizaciones para ninos desde el nacimiento hasta los 13 anos
segun la Norma Tecnica de Salud que establece el Esquema Nacional de Vacunacion.
"""
Usage: #definition

* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* url = "http://minsa.gob.pe/immunizations/PlanDefinition/MINSAEsquemaVacunacion"
* version = "1.0.0"
* name = "MINSAEsquemaVacunacion"
* status = #active
* experimental = false
* publisher = "MINSA - Ministerio de Salud del Peru"
* description = "Esquema Nacional de Vacunacion del Peru para ninos desde el nacimiento hasta los 13 anos."
* jurisdiction = urn:iso:std:iso:3166#PE "Peru"
* relatedArtifact[+]
  * type = #citation
  * citation = "NTS N 196-MINSA/DGIESP-2022: Norma Tecnica de Salud que establece el Esquema Nacional de Vacunacion"

// BCG - Recien nacido
* action[+]
  * title = "Vacunacion BCG"
  * description = "Administrar vacuna BCG al recien nacido."
  * documentation[+]
    * type = #documentation
    * label = "Esquema Nacional de Vacunacion - BCG"
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente es recien nacido y no tiene registro de vacunacion BCG"
      * language = #text/cql-identifier
      * expression = "Paciente necesita vacuna BCG"
  * definitionCanonical = Canonical(MINSABCGVacunacion)

// Hepatitis B - Recien nacido (dentro de las 24 horas)
* action[+]
  * title = "Vacunacion Hepatitis B - Dosis de nacimiento"
  * description = "Administrar vacuna contra Hepatitis B al recien nacido dentro de las primeras 24 horas de vida."
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente es recien nacido y no tiene registro de dosis de nacimiento de Hepatitis B"
      * language = #text/cql-identifier
      * expression = "Paciente necesita dosis de nacimiento de Hepatitis B"

// Pentavalente (DPT-HepB-Hib) - 2, 4, 6 meses
* action[+]
  * title = "Vacunacion Pentavalente (DPT-HepB-Hib)"
  * description = "Administrar vacuna Pentavalente a los 2, 4 y 6 meses de edad."
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente necesita dosis de vacuna Pentavalente"
      * language = #text/cql-identifier
      * expression = "Paciente necesita vacuna Pentavalente"
  * definitionCanonical = Canonical(MINSAPentavalenteVacunacion)

// Polio (IPV + APO) - 2, 4, 6 meses + refuerzos 18 meses y 4 anos
* action[+]
  * title = "Vacunacion contra Poliomielitis (IPV/APO)"
  * description = "Administrar vacunas contra Poliomielitis: IPV a los 2 y 4 meses, APO a los 6 y 18 meses, refuerzo APO a los 4 anos."
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente necesita dosis de vacuna contra Poliomielitis"
      * language = #text/cql-identifier
      * expression = "Paciente necesita vacuna Polio"
  * definitionCanonical = Canonical(MINSAPolioVacunacion)

// Rotavirus - 2, 4 meses
* action[+]
  * title = "Vacunacion contra Rotavirus"
  * description = "Administrar vacuna contra Rotavirus a los 2 y 4 meses de edad."
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente necesita dosis de vacuna contra Rotavirus"
      * language = #text/cql-identifier
      * expression = "Paciente necesita vacuna Rotavirus"
  * definitionCanonical = Canonical(MINSARotavirusVacunacion)

// Neumococo (PCV) - 2, 4 meses + refuerzo 12 meses
* action[+]
  * title = "Vacunacion contra Neumococo"
  * description = "Administrar vacuna antineumococica conjugada a los 2 y 4 meses, con refuerzo a los 12 meses de edad."
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente necesita dosis de vacuna contra Neumococo"
      * language = #text/cql-identifier
      * expression = "Paciente necesita vacuna Neumococo"
  * definitionCanonical = Canonical(MINSANeumococoVacunacion)

// Influenza - 7, 8 meses (2 dosis) + anual hasta 5 anos
* action[+]
  * title = "Vacunacion contra Influenza"
  * description = "Administrar vacuna contra Influenza: primera dosis a los 7 meses, segunda dosis a los 8 meses, luego dosis anual hasta los 5 anos."
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente necesita dosis de vacuna contra Influenza"
      * language = #text/cql-identifier
      * expression = "Paciente necesita vacuna Influenza"

// SPR (Sarampion-Paperas-Rubeola) - 12 meses + refuerzo 18 meses
* action[+]
  * title = "Vacunacion SPR (Sarampion-Paperas-Rubeola)"
  * description = "Administrar vacuna SPR a los 12 meses con refuerzo a los 18 meses de edad."
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente necesita dosis de vacuna SPR"
      * language = #text/cql-identifier
      * expression = "Paciente necesita vacuna SPR"
  * definitionCanonical = Canonical(MINSASPRVacunacion)

// Antiamarilica (Fiebre Amarilla) - 15 meses
* action[+]
  * title = "Vacunacion Antiamarilica (Fiebre Amarilla)"
  * description = "Administrar vacuna contra Fiebre Amarilla a los 15 meses de edad."
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente necesita vacuna contra Fiebre Amarilla"
      * language = #text/cql-identifier
      * expression = "Paciente necesita vacuna Antiamarilica"

// DPT (refuerzo) - 18 meses y 4 anos
* action[+]
  * title = "Vacunacion DPT - Refuerzos"
  * description = "Administrar refuerzos de DPT a los 18 meses y 4 anos de edad."
  * condition[+]
    * kind = #applicability
    * expression
      * description = "El paciente necesita refuerzo de DPT"
      * language = #text/cql-identifier
      * expression = "Paciente necesita refuerzo DPT"

// VPH (Virus del Papiloma Humano) - 9 a 13 anos (ninas), 2 dosis
* action[+]
  * title = "Vacunacion contra VPH (Virus del Papiloma Humano)"
  * description = "Administrar vacuna contra VPH a ninas de 9 a 13 anos, esquema de 2 dosis con intervalo de 6 meses."
  * condition[+]
    * kind = #applicability
    * expression
      * description = "La paciente es nina de 9 a 13 anos y necesita vacuna VPH"
      * language = #text/cql-identifier
      * expression = "Paciente necesita vacuna VPH"
  * definitionCanonical = Canonical(MINSAHPVVacunacion)

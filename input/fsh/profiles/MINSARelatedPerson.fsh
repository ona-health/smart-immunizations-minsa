// ABOUTME: Perfil de Persona Relacionada (cuidador) para MINSA Perú, extendiendo IMMZCaregiver de la OMS.
// ABOUTME: Agrega identificador DNI y codificación de relación de parentesco para el cuidador del paciente.

Profile: MINSARelatedPerson
Parent: IMMZCaregiver
Id: MINSA.RelatedPerson
Title: "Cuidador MINSA Perú"
Description: "Perfil de Persona Relacionada (cuidador) para el programa de inmunizaciones del Ministerio de Salud del Perú (MINSA). Extiende el perfil IMMZCaregiver de las Directrices SMART de la OMS con identificación peruana."

* ^experimental = false
* ^publisher = "MINSA - Ministerio de Salud del Perú"

// Identificador DNI del cuidador
* identifier 0..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains dni 0..1 MS

* identifier[dni] ^short = "Documento Nacional de Identidad (DNI) del cuidador"
* identifier[dni] ^definition = "Número de Documento Nacional de Identidad del cuidador, emitido por RENIEC."
* identifier[dni].system 1..1
* identifier[dni].system = "http://minsa.gob.pe/sid/dni"
* identifier[dni].value 1..1

// Relación de parentesco con el paciente
* relationship 1..1
* relationship ^short = "Relación de parentesco con el paciente"
* relationship ^definition = "Tipo de relación del cuidador con el paciente (padre, madre, tutor, etc.)."
* relationship from http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype (extensible)

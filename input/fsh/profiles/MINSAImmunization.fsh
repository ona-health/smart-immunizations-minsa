// ABOUTME: Perfil de Inmunización para MINSA Perú, extendiendo el perfil IMMZImmunization de la OMS.
// ABOUTME: Vincula el código de vacuna al conjunto de valores MINSA y agrega referencia al establecimiento de salud.

Profile: MINSAImmunization
Parent: IMMZImmunization
Id: MINSA.Immunization
Title: "Inmunización MINSA Perú"
Description: "Perfil de Inmunización para el programa de inmunizaciones del Ministerio de Salud del Perú (MINSA). Extiende el perfil IMMZImmunization de las Directrices SMART de la OMS con el esquema nacional de vacunación."

* ^experimental = false
* ^publisher = "MINSA - Ministerio de Salud del Perú"

// Código de vacuna vinculado al conjunto de valores MINSA
* vaccineCode from MINSAVacunaVS (required)
* vaccineCode ^short = "Código de vacuna según el esquema nacional de vacunación"

// Profesional de salud que administró la vacuna
* performer 1..*
* performer ^short = "Profesional de salud y establecimiento que administró la vacuna"
* performer.actor ^short = "Referencia al profesional o establecimiento de salud"

* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "actor"
* performer ^slicing.rules = #open

* performer contains establecimiento 0..1 MS
* performer[establecimiento].actor only Reference(Organization)
* performer[establecimiento] ^short = "Establecimiento de salud donde se administró la vacuna"

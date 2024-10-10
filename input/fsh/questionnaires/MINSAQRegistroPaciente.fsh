// ABOUTME: Cuestionario de registro de paciente para el programa de inmunizaciones MINSA Perú.
// ABOUTME: Captura datos del cuidador, del niño, ubicación geográfica y número SIS.

Instance:     MINSAQRegistroPaciente
InstanceOf:   sdc-questionnaire-extr-smap
Title:        "MINSA - Registro de Paciente"
Description:  "Cuestionario para el registro de pacientes (niños) en el programa de inmunizaciones del MINSA Perú. Incluye datos del cuidador, datos del niño, ubicación geográfica y seguro SIS."
Usage: #definition

* version = "1.0.0"
* status = #draft
* subjectType = #Patient
* language = #es
* date = "2024-10-10"
* publisher = "MINSA - Ministerio de Salud del Perú"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://minsa.gob.pe/immunizations/StructureMap/MINSARegistroPacienteSM"

// --- Campo oculto: Modo edición ---
* item[+].linkId = "es-edicion-perfil"
* item[=].text = "Es edición de perfil"
* item[=].type = #boolean
* item[=].required = false
* item[=].readOnly = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[=].valueBoolean = true

// === GRUPO: Datos del cuidador ===
* item[+].linkId = "grupo-cuidador"
* item[=].text = "Datos del cuidador"
* item[=].type = #group
* item[=].required = false
* item[=].repeats = false

* item[=].item[+].linkId = "cuidador-nombre"
* item[=].item[=].text = "Nombre del cuidador"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "cuidador-apellido"
* item[=].item[=].text = "Apellido del cuidador"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "cuidador-dni"
* item[=].item[=].text = "DNI del cuidador"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/regex"
* item[=].item[=].extension[=].valueString = "^[0-9]{8}$"

* item[=].item[+].linkId = "cuidador-telefono"
* item[=].item[=].text = "Teléfono del cuidador"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/regex"
* item[=].item[=].extension[=].valueString = "^[0-9]{9}$"

* item[=].item[+].linkId = "cuidador-relacion"
* item[=].item[=].text = "Relación con el niño"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[+].valueCoding.code = #madre
* item[=].item[=].answerOption[=].valueCoding.display = "Madre"
* item[=].item[=].answerOption[+].valueCoding.code = #padre
* item[=].item[=].answerOption[=].valueCoding.display = "Padre"
* item[=].item[=].answerOption[+].valueCoding.code = #abuelo-a
* item[=].item[=].answerOption[=].valueCoding.display = "Abuelo/a"
* item[=].item[=].answerOption[+].valueCoding.code = #hermano-a
* item[=].item[=].answerOption[=].valueCoding.display = "Hermano/a"
* item[=].item[=].answerOption[+].valueCoding.code = #tio-a
* item[=].item[=].answerOption[=].valueCoding.display = "Tío/a"
* item[=].item[=].answerOption[+].valueCoding.code = #otro
* item[=].item[=].answerOption[=].valueCoding.display = "Otro"

// === GRUPO: Datos del niño ===
* item[+].linkId = "grupo-nino"
* item[=].text = "Datos del niño"
* item[=].type = #group
* item[=].required = true
* item[=].repeats = false

* item[=].item[+].linkId = "nino-nombre"
* item[=].item[=].text = "Nombre del niño"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/regex"
* item[=].item[=].extension[=].valueString = "^[a-zA-ZáéíóúñÁÉÍÓÚÑ\\- ]+$"

* item[=].item[+].linkId = "nino-apellido"
* item[=].item[=].text = "Apellido del niño"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/regex"
* item[=].item[=].extension[=].valueString = "^[a-zA-ZáéíóúñÁÉÍÓÚÑ\\- ]+$"

* item[=].item[+].linkId = "nino-fecha-nacimiento"
* item[=].item[=].text = "Fecha de nacimiento"
* item[=].item[=].type = #date
* item[=].item[=].required = true

* item[=].item[+].linkId = "nino-sexo"
* item[=].item[=].text = "Sexo"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#male "Masculino"
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#female "Femenino"

* item[=].item[+].linkId = "nino-tipo-documento"
* item[=].item[=].text = "Tipo de documento"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[+].valueCoding.code = #dni
* item[=].item[=].answerOption[=].valueCoding.display = "DNI"
* item[=].item[=].answerOption[+].valueCoding.code = #cnv
* item[=].item[=].answerOption[=].valueCoding.display = "Certificado de Nacido Vivo (CNV)"

* item[=].item[+].linkId = "nino-numero-documento"
* item[=].item[=].text = "Número de documento (DNI o CNV)"
* item[=].item[=].type = #string
* item[=].item[=].required = true

// --- Campo oculto: Edad calculada ---
* item[=].item[+].linkId = "nino-edad-calculada"
* item[=].item[=].text = "Edad calculada"
* item[=].item[=].type = #integer
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "today().toString().substring(0, 4).toInteger() - %resource.descendants().where(linkId='nino-fecha-nacimiento').answer.value.toString().substring(0, 4).toInteger()"

// === GRUPO: Ubicación geográfica ===
* item[+].linkId = "grupo-ubicacion"
* item[=].text = "Ubicación geográfica"
* item[=].type = #group
* item[=].required = true
* item[=].repeats = false

* item[=].item[+].linkId = "ubicacion-departamento"
* item[=].item[=].text = "Departamento"
* item[=].item[=].type = #reference
* item[=].item[=].required = true

* item[=].item[+].linkId = "ubicacion-provincia"
* item[=].item[=].text = "Provincia"
* item[=].item[=].type = #reference
* item[=].item[=].required = true

* item[=].item[+].linkId = "ubicacion-distrito"
* item[=].item[=].text = "Distrito"
* item[=].item[=].type = #reference
* item[=].item[=].required = true

* item[=].item[+].linkId = "ubicacion-establecimiento"
* item[=].item[=].text = "Establecimiento de salud"
* item[=].item[=].type = #reference
* item[=].item[=].required = true

// === Seguro SIS ===
* item[+].linkId = "numero-sis"
* item[=].text = "Número del Seguro Integral de Salud (SIS)"
* item[=].type = #string
* item[=].required = false

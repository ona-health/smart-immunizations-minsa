// ABOUTME: Cuestionario para registrar eventos adversos supuestamente atribuibles a la vacunación o inmunización (ESAVI).
// ABOUTME: Captura la vacuna causante, fecha de reacción, tipo de manifestación, severidad y resultado.

Instance:     MINSAQRegistroEventoAdverso
InstanceOf:   sdc-questionnaire-extr-smap
Title:        "MINSA - Registro de Evento Adverso"
Description:  "Cuestionario para registrar un evento adverso supuestamente atribuible a la vacunación o inmunización (ESAVI). Adaptado del cuestionario MINSA EIR record_adverse_event."
Usage: #definition

* version = "1.0.0"
* status = #draft
* subjectType = #Patient
* language = #es
* date = "2024-10-10"
* publisher = "MINSA - Ministerio de Salud del Perú"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://minsa.gob.pe/immunizations/StructureMap/MINSARegistroEventoAdversoSM"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient "Patient"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient

// --- Variable: consulta de vacunas del paciente ---
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "vacunas"
* extension[=].valueExpression.language = #application/x-fhir-query
* extension[=].valueExpression.expression = "Immunization?patient={{%patient.id.replaceMatches('/_history/.*', '')}}&_sort=date"

// === Campos ocultos ===

* item[+].linkId = "id-paciente"
* item[=].text = "ID del paciente"
* item[=].type = #string
* item[=].required = true
* item[=].readOnly = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[=].valueBoolean = true

* item[+].linkId = "edad-paciente-anos"
* item[=].text = "Edad del paciente en años"
* item[=].type = #integer
* item[=].required = false
* item[=].readOnly = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[=].valueBoolean = true

* item[+].linkId = "fecha-nacimiento-paciente"
* item[=].text = "Fecha de nacimiento del paciente"
* item[=].type = #string
* item[=].required = false
* item[=].readOnly = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[=].valueBoolean = true

// === Vacuna que causó la reacción ===

* item[+].linkId = "vacuna-causante"
* item[=].text = "Vacuna que causó la reacción"
* item[=].type = #reference
* item[=].required = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension[=].valueCodeableConcept.coding[+].system = "http://hl7.org/fhir/questionnaire-item-control"
* item[=].extension[=].valueCodeableConcept.coding[=].code = #drop-down
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression"
* item[=].extension[=].valueExpression.language = #application/x-fhir-query
* item[=].extension[=].valueExpression.expression = "Immunization?patient=Patient/{{%patient.id.replaceMatches('/_history/.*', '')}}&_sort=date"
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn"
* item[=].extension[=].extension[+].url = "path"
* item[=].extension[=].extension[=].valueString = "vaccineCode.text"
* item[=].extension[=].extension[+].url = "forDisplay"
* item[=].extension[=].extension[=].valueBoolean = true

// === Fecha de la reacción ===

* item[+].linkId = "fecha-reaccion"
* item[=].text = "Fecha en que el paciente comenzó a presentar la reacción"
* item[=].type = #date
* item[=].required = true

// === Tipo de manifestación ===

* item[+].linkId = "tipo-manifestacion"
* item[=].text = "Tipo de manifestación"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[+].valueCoding.code = #reaccion-local-severa
* item[=].answerOption[=].valueCoding.display = "Reacción local severa"
* item[=].answerOption[+].valueCoding.code = #convulsiones
* item[=].answerOption[=].valueCoding.display = "Convulsiones"
* item[=].answerOption[+].valueCoding.code = #absceso
* item[=].answerOption[=].valueCoding.display = "Absceso"
* item[=].answerOption[+].valueCoding.code = #sepsis
* item[=].answerOption[=].valueCoding.display = "Sepsis"
* item[=].answerOption[+].valueCoding.code = #encefalopatia
* item[=].answerOption[=].valueCoding.display = "Encefalopatía"
* item[=].answerOption[+].valueCoding.code = #sindrome-shock-toxico
* item[=].answerOption[=].valueCoding.display = "Síndrome de shock tóxico"
* item[=].answerOption[+].valueCoding.code = #anafilaxia
* item[=].answerOption[=].valueCoding.display = "Anafilaxia"
* item[=].answerOption[+].valueCoding.code = #fiebre
* item[=].answerOption[=].valueCoding.display = "Fiebre"
* item[=].answerOption[+].valueCoding.code = #otro
* item[=].answerOption[=].valueCoding.display = "Otro"

* item[+].linkId = "otro-tipo-manifestacion"
* item[=].text = "Especifique otro tipo de manifestación"
* item[=].type = #string
* item[=].required = false
* item[=].enableWhen[+].question = "tipo-manifestacion"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.code = #otro

// === Severidad ===

* item[+].linkId = "severidad"
* item[=].text = "Severidad de la reacción"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[+].valueCoding.code = #no-grave
* item[=].answerOption[=].valueCoding.display = "No grave"
* item[=].answerOption[+].valueCoding.code = #muerte
* item[=].answerOption[=].valueCoding.display = "Muerte"
* item[=].answerOption[+].valueCoding.code = #riesgo-vital
* item[=].answerOption[=].valueCoding.display = "Riesgo vital"
* item[=].answerOption[+].valueCoding.code = #discapacidad
* item[=].answerOption[=].valueCoding.display = "Discapacidad"
* item[=].answerOption[+].valueCoding.code = #hospitalizacion
* item[=].answerOption[=].valueCoding.display = "Hospitalización"
* item[=].answerOption[+].valueCoding.code = #anomalia-congenita
* item[=].answerOption[=].valueCoding.display = "Anomalía congénita"
* item[=].answerOption[+].valueCoding.code = #otro-evento-medico-importante
* item[=].answerOption[=].valueCoding.display = "Otro evento médico importante (especificar)"

* item[+].linkId = "especificar-otro-evento"
* item[=].text = "Especifique otro evento médico importante"
* item[=].type = #string
* item[=].required = false
* item[=].enableWhen[+].question = "severidad"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.code = #otro-evento-medico-importante

// === Resultado ===

* item[+].linkId = "resultado"
* item[=].text = "Resultado de la reacción"
* item[=].type = #choice
* item[=].required = false
* item[=].enableWhen[+].question = "severidad"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding.code = #muerte
* item[=].answerOption[+].valueCoding.code = #fallecido
* item[=].answerOption[=].valueCoding.display = "Fallecido"
* item[=].answerOption[+].valueCoding.code = #recuperado
* item[=].answerOption[=].valueCoding.display = "Recuperado"
* item[=].answerOption[+].valueCoding.code = #recuperado-con-secuelas
* item[=].answerOption[=].valueCoding.display = "Recuperado con secuelas"
* item[=].answerOption[+].valueCoding.code = #en-recuperacion
* item[=].answerOption[=].valueCoding.display = "En recuperación"
* item[=].answerOption[+].valueCoding.code = #no-recuperado
* item[=].answerOption[=].valueCoding.display = "No recuperado"

// === Fecha de fallecimiento (condicional) ===

* item[+].linkId = "fecha-fallecimiento"
* item[=].text = "Fecha de fallecimiento"
* item[=].type = #date
* item[=].required = true
* item[=].enableBehavior = #any
* item[=].enableWhen[+].question = "severidad"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.code = #muerte
* item[=].enableWhen[+].question = "resultado"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.code = #fallecido

// === ¿Fue referido el paciente? ===

* item[+].linkId = "fue-referido"
* item[=].text = "¿Fue referido el paciente?"
* item[=].type = #choice
* item[=].required = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension[=].valueCodeableConcept.coding[+].system = "http://hl7.org/fhir/questionnaire-item-control"
* item[=].extension[=].valueCodeableConcept.coding[=].code = #drop-down
* item[=].answerOption[+].valueCoding.code = #si
* item[=].answerOption[=].valueCoding.display = "Sí"
* item[=].answerOption[+].valueCoding.code = #no
* item[=].answerOption[=].valueCoding.display = "No"

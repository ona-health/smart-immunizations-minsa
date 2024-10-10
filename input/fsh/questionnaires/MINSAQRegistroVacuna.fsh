// ABOUTME: Cuestionario para el registro de una dosis de vacuna individual en el programa MINSA Perú.
// ABOUTME: Captura si se administró la vacuna, razón de no administración, fecha, lote, lugar y número de dosis.

Instance:     MINSAQRegistroVacuna
InstanceOf:   sdc-questionnaire-extr-smap
Title:        "MINSA - Registro de Vacunación"
Description:  "Cuestionario para registrar la administración de una vacuna individual. Adaptado del cuestionario MINSA EIR record_child_immunization."
Usage: #definition

* version = "1.0.0"
* status = #draft
* subjectType = #Patient
* language = #es
* date = "2024-10-10"
* publisher = "MINSA - Ministerio de Salud del Perú"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://minsa.gob.pe/immunizations/StructureMap/MINSARegistroVacunaSM"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient "Patient"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient

// --- Variable: descripción de la tarea ---
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "desc-tarea"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value"

// === Campos ocultos ===

* item[+].linkId = "paciente-fecha-nacimiento"
* item[=].text = "Fecha de nacimiento del paciente"
* item[=].type = #string
* item[=].required = false
* item[=].readOnly = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "Patient.birthDate"

* item[+].linkId = "nombre-tarea"
* item[=].text = "Nombre de la tarea"
* item[=].type = #string
* item[=].required = false
* item[=].readOnly = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[=].valueBoolean = true

* item[+].linkId = "codigo-tarea"
* item[=].text = "Código de la tarea"
* item[=].type = #integer
* item[=].required = false
* item[=].readOnly = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[=].valueBoolean = true

* item[+].linkId = "descripcion-tarea"
* item[=].text = "Descripción de la tarea"
* item[=].type = #string
* item[=].required = false
* item[=].readOnly = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[=].valueBoolean = true

* item[+].linkId = "id-logico-tarea"
* item[=].text = "ID lógico de la tarea"
* item[=].type = #string
* item[=].required = false
* item[=].readOnly = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[=].valueBoolean = true

* item[+].linkId = "numero-dosis-vacuna"
* item[=].text = "Número de dosis de la vacuna"
* item[=].type = #string
* item[=].required = false
* item[=].readOnly = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[=].valueBoolean = true

// === Pregunta principal ===

* item[+].linkId = "vacuna-administrada"
* item[=].text = "¿Se administró la vacuna?"
* item[=].type = #choice
* item[=].required = true
* item[=].repeats = false
* item[=].answerOption[+].valueCoding.code = #si
* item[=].answerOption[=].valueCoding.display = "Sí"
* item[=].answerOption[+].valueCoding.code = #no
* item[=].answerOption[=].valueCoding.display = "No"

// === Si NO se administró: razón ===

* item[+].linkId = "razon-no-administrada"
* item[=].text = "¿Por qué no se administró la vacuna?"
* item[=].type = #choice
* item[=].required = true
* item[=].repeats = false
* item[=].enableWhen[+].question = "vacuna-administrada"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.code = #no
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension[=].valueCodeableConcept.coding[+].system = "http://hl7.org/fhir/questionnaire-item-control"
* item[=].extension[=].valueCodeableConcept.coding[=].code = #drop-down
* item[=].answerOption[+].valueCoding.code = #inmunidad
* item[=].answerOption[=].valueCoding.display = "Inmunidad"
* item[=].answerOption[+].valueCoding.code = #desabastecimiento
* item[=].answerOption[=].valueCoding.display = "Desabastecimiento"
* item[=].answerOption[+].valueCoding.code = #precaucion-medica
* item[=].answerOption[=].valueCoding.display = "Precaución médica"
* item[=].answerOption[+].valueCoding.code = #producto-agotado
* item[=].answerOption[=].valueCoding.display = "Producto agotado"
* item[=].answerOption[+].valueCoding.code = #objecion-del-paciente
* item[=].answerOption[=].valueCoding.display = "Objeción del paciente"
* item[=].answerOption[+].valueCoding.code = #rechazo-del-cuidador
* item[=].answerOption[=].valueCoding.display = "Rechazo del cuidador"
* item[=].answerOption[+].valueCoding.code = #razon-no-especificada
* item[=].answerOption[=].valueCoding.display = "Razón no especificada"
* item[=].answerOption[+].valueCoding.code = #alergia-a-vacuna-o-componente
* item[=].answerOption[=].valueCoding.display = "Alergia a la vacuna o componente"
* item[=].answerOption[+].valueCoding.code = #inmunocomprometido
* item[=].answerOption[=].valueCoding.display = "Inmunocomprometido"
* item[=].answerOption[+].valueCoding.code = #enfermedad-cronica
* item[=].answerOption[=].valueCoding.display = "Enfermedad crónica o condición"
* item[=].answerOption[+].valueCoding.code = #enfermedad-aguda
* item[=].answerOption[=].valueCoding.display = "Enfermedad aguda"
* item[=].answerOption[+].valueCoding.code = #ya-tuvo-la-enfermedad
* item[=].answerOption[=].valueCoding.display = "Ya tuvo la enfermedad"
* item[=].answerOption[+].valueCoding.code = #otra-razon
* item[=].answerOption[=].valueCoding.display = "No se realizó la inmunización por otras razones"

// === Si SÍ se administró: datos de la vacunación ===

* item[+].linkId = "fecha-vacunacion"
* item[=].text = "Fecha de vacunación"
* item[=].type = #date
* item[=].required = true
* item[=].repeats = false
* item[=].enableWhen[+].question = "vacuna-administrada"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.code = #si

* item[+].linkId = "numero-lote"
* item[=].text = "Número de lote de la vacuna"
* item[=].type = #string
* item[=].required = true
* item[=].repeats = false
* item[=].enableWhen[+].question = "vacuna-administrada"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.code = #si

* item[+].linkId = "lugar-vacunacion"
* item[=].text = "Lugar de la vacunación"
* item[=].type = #choice
* item[=].required = true
* item[=].repeats = false
* item[=].enableWhen[+].question = "vacuna-administrada"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.code = #si
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension[=].valueCodeableConcept.coding[+].system = "http://hl7.org/fhir/questionnaire-item-control"
* item[=].extension[=].valueCodeableConcept.coding[=].code = #drop-down
* item[=].answerOption[+].valueCoding.code = #establecimiento
* item[=].answerOption[=].valueCoding.display = "Establecimiento de salud"
* item[=].answerOption[+].valueCoding.code = #brigada-movil
* item[=].answerOption[=].valueCoding.display = "Brigada móvil"

// === Grupo oculto: Mapeo de números de dosis por antígeno ===

* item[+].linkId = "numeros-dosis-vacunas"
* item[=].text = "Números de dosis por vacuna"
* item[=].type = #group
* item[=].required = false
* item[=].repeats = false
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[=].valueBoolean = true

// BCG
* item[=].item[+].linkId = "bcg 0"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "1"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('bcg 0')"

// HVB (Hepatitis B recién nacido)
* item[=].item[+].linkId = "hvb 0"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "1"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('hvb 0')"

// Pentavalente (DPT-HB-Hib)
* item[=].item[+].linkId = "penta 1"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "1"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('penta 1')"

* item[=].item[+].linkId = "penta 2"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "2"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('penta 2')"

* item[=].item[+].linkId = "penta 3"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "3"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('penta 3')"

// IPV (Polio inactivada)
* item[=].item[+].linkId = "ipv 1"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "1"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('ipv 1')"

* item[=].item[+].linkId = "ipv 2"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "2"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('ipv 2')"

// APO (Antipolio oral)
* item[=].item[+].linkId = "apo 1"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "3"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('apo 1')"

* item[=].item[+].linkId = "apo refuerzo"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "Refuerzo"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('apo refuerzo')"

// Rotavirus
* item[=].item[+].linkId = "rota 1"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "1"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('rota 1')"

* item[=].item[+].linkId = "rota 2"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "2"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('rota 2')"

// Neumococo (PCV)
* item[=].item[+].linkId = "neumococo 1"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "1"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('neumococo 1')"

* item[=].item[+].linkId = "neumococo 2"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "2"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('neumococo 2')"

* item[=].item[+].linkId = "neumococo refuerzo"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "Refuerzo"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('neumococo refuerzo')"

// Influenza
* item[=].item[+].linkId = "influenza 1"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "1"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('influenza 1')"

* item[=].item[+].linkId = "influenza 2"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "2"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('influenza 2')"

// SPR (Sarampión, Paperas, Rubéola)
* item[=].item[+].linkId = "spr 1"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "1"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('spr 1')"

* item[=].item[+].linkId = "spr refuerzo"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "Refuerzo"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('spr refuerzo')"

// Varicela
* item[=].item[+].linkId = "varicela 1"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "1"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('varicela 1')"

* item[=].item[+].linkId = "varicela refuerzo"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "Refuerzo"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('varicela refuerzo')"

// AMA (Antiamarílica / Fiebre amarilla)
* item[=].item[+].linkId = "ama 1"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "1"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('ama 1')"

// DPT (refuerzo)
* item[=].item[+].linkId = "dpt refuerzo"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "Refuerzo"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('dpt refuerzo')"

// Hepatitis A
* item[=].item[+].linkId = "hepa 1"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "1"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('hepa 1')"

// VPH (Virus del Papiloma Humano)
* item[=].item[+].linkId = "vph 1"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "1"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('vph 1')"

* item[=].item[+].linkId = "vph 2"
* item[=].item[=].type = #string
* item[=].item[=].initial[+].valueString = "2"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%resource.descendants().where(linkId='descripcion-tarea').answer.value.lower().contains('vph 2')"

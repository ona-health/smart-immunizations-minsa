// ABOUTME: Cuestionario para silenciar (desactivar notificaciones de) un paciente en el programa de inmunizaciones MINSA Perú.
// ABOUTME: Captura la razón por la cual el paciente ya no recibirá recordatorios de vacunación.

Instance:     MINSAQSilenciarPaciente
InstanceOf:   sdc-questionnaire-extr-smap
Title:        "MINSA - Silenciar Paciente"
Description:  "Cuestionario para silenciar un paciente, desactivando los recordatorios de vacunación. Se utiliza cuando el paciente se ha mudado, fue transferido o se perdió el seguimiento."
Usage: #definition

* version = "1.0.0"
* status = #draft
* subjectType = #Patient
* language = #es
* date = "2024-10-10"
* publisher = "MINSA - Ministerio de Salud del Perú"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://minsa.gob.pe/immunizations/StructureMap/MINSASilenciarPacienteSM"

// === Razón para silenciar ===

* item[+].linkId = "razon-silenciar"
* item[=].text = "Razón para silenciar al paciente"
* item[=].type = #choice
* item[=].required = true
* item[=].repeats = false
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension[=].valueCodeableConcept.coding[+].system = "http://hl7.org/fhir/questionnaire-item-control"
* item[=].extension[=].valueCodeableConcept.coding[=].code = #drop-down
* item[=].answerOption[+].valueCoding.code = #se-mudo
* item[=].answerOption[=].valueCoding.display = "Se mudó"
* item[=].answerOption[+].valueCoding.code = #transferido
* item[=].answerOption[=].valueCoding.display = "Transferido a otro establecimiento"
* item[=].answerOption[+].valueCoding.code = #perdida-seguimiento
* item[=].answerOption[=].valueCoding.display = "Pérdida de seguimiento"
* item[=].answerOption[+].valueCoding.code = #otro
* item[=].answerOption[=].valueCoding.display = "Otro"

// === Especificar otra razón (condicional) ===

* item[+].linkId = "otra-razon-silenciar"
* item[=].text = "Especifique la razón"
* item[=].type = #string
* item[=].required = true
* item[=].repeats = false
* item[=].enableWhen[+].question = "razon-silenciar"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.code = #otro

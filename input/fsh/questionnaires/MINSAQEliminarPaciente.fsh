// ABOUTME: Cuestionario para eliminar (dar de baja) a un paciente del programa de inmunizaciones MINSA Perú.
// ABOUTME: Captura la razón de eliminación: mudanza, fallecimiento, registro duplicado u otra razón.

Instance:     MINSAQEliminarPaciente
InstanceOf:   sdc-questionnaire-extr-smap
Title:        "MINSA - Eliminar Paciente"
Description:  "Cuestionario para eliminar (dar de baja) a un paciente del registro de inmunizaciones. Se utiliza cuando el paciente se ha mudado, ha fallecido, tiene registro duplicado u otra razón."
Usage: #definition

* version = "1.0.0"
* status = #draft
* subjectType = #Patient
* language = #es
* date = "2024-10-10"
* publisher = "MINSA - Ministerio de Salud del Perú"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://minsa.gob.pe/immunizations/StructureMap/MINSAEliminarPacienteSM"

// === Razón para eliminar ===

* item[+].linkId = "razon-eliminar"
* item[=].text = "Razón para eliminar al paciente"
* item[=].type = #choice
* item[=].required = true
* item[=].repeats = false
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension[=].valueCodeableConcept.coding[+].system = "http://hl7.org/fhir/questionnaire-item-control"
* item[=].extension[=].valueCodeableConcept.coding[=].code = #drop-down
* item[=].answerOption[+].valueCoding.code = #se-mudo
* item[=].answerOption[=].valueCoding.display = "Se mudó"
* item[=].answerOption[+].valueCoding.code = #fallecido
* item[=].answerOption[=].valueCoding.display = "Falleció"
* item[=].answerOption[+].valueCoding.code = #registro-duplicado
* item[=].answerOption[=].valueCoding.display = "Registro duplicado"
* item[=].answerOption[+].valueCoding.code = #otro
* item[=].answerOption[=].valueCoding.display = "Otro"

// === Especificar otra razón (condicional) ===

* item[+].linkId = "otra-razon-eliminar"
* item[=].text = "Especifique la razón"
* item[=].type = #string
* item[=].required = true
* item[=].repeats = false
* item[=].enableWhen[+].question = "razon-eliminar"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.code = #otro

// === Fecha de fallecimiento (condicional) ===

* item[+].linkId = "fecha-fallecimiento"
* item[=].text = "Fecha de fallecimiento"
* item[=].type = #date
* item[=].required = true
* item[=].repeats = false
* item[=].enableWhen[+].question = "razon-eliminar"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.code = #fallecido

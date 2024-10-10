// ABOUTME: RuleSets reutilizables para la construcción de cuestionarios FHIR en FSH.
// ABOUTME: Define el macro Question para agregar ítems de cuestionario de forma concisa.

RuleSet: Question(linkId, text, type, required, repeats)
* item[+].linkId = "{linkId}"
* item[=].text = "{text}"
* item[=].type = #{type}
* item[=].repeats = {repeats}
* item[=].required = {required}

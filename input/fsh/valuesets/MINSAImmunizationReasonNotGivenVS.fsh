// ABOUTME: ValueSet con las razones por las cuales no se administró una vacuna en el contexto peruano.
// ABOUTME: Basado en el cuestionario del Registro Electrónico de Inmunizaciones (EIR) de MINSA.
ValueSet: MINSAImmunizationReasonNotGivenVS
Title: "Razones de No Administración de Vacuna - MINSA"
Description: "Conjunto de valores para las razones por las cuales una vacuna no fue administrada, según el Registro Electrónico de Inmunizaciones de MINSA"

* ^status = #active
* ^name = "MINSAImmunizationReasonNotGivenVS"

* MINSA#NOREASON-IMMUNITY "Inmunidad"
* MINSA#NOREASON-STOCKOUT "Desabastecimiento"
* MINSA#NOREASON-PRECAUTION "Precaución médica"
* MINSA#NOREASON-EXPIRED "Producto vencido"
* MINSA#NOREASON-CLIENT "Rechazo del cliente"
* MINSA#NOREASON-CAREGIVER "Rechazo del cuidador"
* MINSA#NOREASON-ABSENT "Niño no presente"
* MINSA#NOREASON-SICK "Niño enfermo"
* MINSA#NOREASON-AGE "Fuera de rango de edad"
* MINSA#NOREASON-CONTRA "Contraindicado"
* MINSA#NOREASON-TIME "Sin tiempo"
* MINSA#NOREASON-OTHER "Otro"

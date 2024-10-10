// ABOUTME: ValueSet con los números de dosis utilizados en el esquema de vacunación del Perú.
// ABOUTME: Incluye dosis de recién nacido, primera a tercera dosis y refuerzos.
ValueSet: MINSADoseNumberVS
Title: "Números de Dosis del Esquema de Vacunación - MINSA"
Description: "Conjunto de valores para los números de dosis utilizados en el esquema nacional de vacunación del Perú"

* ^status = #active
* ^name = "MINSADoseNumberVS"

* MINSA#DOSE-BIRTH "Dosis de recién nacido"
* MINSA#DOSE-1 "1ra dosis"
* MINSA#DOSE-2 "2da dosis"
* MINSA#DOSE-3 "3ra dosis"
* MINSA#DOSE-R1 "1er refuerzo"
* MINSA#DOSE-R2 "2do refuerzo"

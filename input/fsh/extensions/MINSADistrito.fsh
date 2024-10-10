// ABOUTME: Extensión FHIR para capturar el Distrito (división administrativa de tercer nivel) del Perú.
// ABOUTME: Se aplica al elemento Address para registrar la ubicación geográfica del paciente.

Extension: MINSADistrito
Title: "Distrito del Perú"
Description: "División administrativa de tercer nivel del Perú (Distrito) donde reside el paciente."
Context: Address

* ^experimental = false
* ^publisher = "MINSA - Ministerio de Salud del Perú"

* value[x] only Coding
* value[x] 1..1

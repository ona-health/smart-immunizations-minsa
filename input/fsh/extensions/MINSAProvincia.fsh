// ABOUTME: Extensión FHIR para capturar la Provincia (división administrativa de segundo nivel) del Perú.
// ABOUTME: Se aplica al elemento Address para registrar la ubicación geográfica del paciente.

Extension: MINSAProvincia
Title: "Provincia del Perú"
Description: "División administrativa de segundo nivel del Perú (Provincia) donde reside el paciente."
Context: Address

* ^experimental = false
* ^publisher = "MINSA - Ministerio de Salud del Perú"

* value[x] only Coding
* value[x] 1..1

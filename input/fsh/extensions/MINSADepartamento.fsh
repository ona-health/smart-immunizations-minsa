// ABOUTME: Extensión FHIR para capturar el Departamento (división administrativa de primer nivel) del Perú.
// ABOUTME: Se aplica al elemento Address para registrar la ubicación geográfica del paciente.

Extension: MINSADepartamento
Title: "Departamento del Perú"
Description: "División administrativa de primer nivel del Perú (Departamento) donde reside el paciente."
Context: Address

* ^experimental = false
* ^publisher = "MINSA - Ministerio de Salud del Perú"

* value[x] only Coding
* value[x] 1..1

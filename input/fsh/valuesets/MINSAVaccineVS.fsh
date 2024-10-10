// ABOUTME: ValueSet que agrupa todas las vacunas del esquema nacional de vacunación del Perú.
// ABOUTME: Incluye códigos MINSA y mapeo a códigos WHO IMMZ.Z donde corresponde.
ValueSet: MINSAVaccineVS
Title: "Vacunas del Esquema Nacional de Vacunación MINSA"
Description: "Conjunto de valores para las vacunas utilizadas en el esquema nacional de vacunación del Perú, incluyendo códigos MINSA y referencias a códigos WHO"

* ^status = #active
* ^name = "MINSAVaccineVS"

// Vacunas MINSA
* MINSA#VAC-BCG "BCG"
* MINSA#VAC-OPV "APO - Antipolio Oral"
* MINSA#VAC-IPV "APV - Antipolio Inactivada"
* MINSA#VAC-PENTA "Pentavalente"
* MINSA#VAC-ROTA "Rotavirus"
* MINSA#VAC-PCV "Neumococo"
* MINSA#VAC-SPR "SPR"
* MINSA#VAC-HPV "VPH"
* MINSA#VAC-DT "DT Pediátrico"
* MINSA#VAC-INF "Influenza"
* MINSA#VAC-HEPB "Hepatitis B"
* MINSA#VAC-AMA "Antiamarílica"

// Códigos WHO IMMZ.Z equivalentes
* IMMZ.Z#DE1 "BCG vaccines"
* IMMZ.Z#DE30 "Oral polio vaccines"
* IMMZ.Z#DE31 "Inactivated polio vaccines"
* IMMZ.Z#DE29 "Pentavalent vaccines"
* IMMZ.Z#DE16 "Rotavirus vaccines"
* IMMZ.Z#DE13 "Pneumococcal vaccines"
* IMMZ.Z#DE9 "Measles-containing vaccines"
* IMMZ.Z#DE7 "HPV vaccines"
* IMMZ.Z#DE33 "Tetanus and diphtheria-containing vaccines (DT)"
* IMMZ.Z#DE18 "Seasonal influenza vaccines"
* IMMZ.Z#DE6 "Hepatitis B-containing vaccines"
* IMMZ.Z#DE23 "Yellow fever vaccines"

// ABOUTME: ValueSet con los tipos de documento de identidad aceptados en el sistema de salud peruano.
// ABOUTME: Incluye DNI, Carnet de Extranjería, SIS, Certificado de Nacido Vivo y PTP.
ValueSet: MINSAIdentifierTypeVS
Title: "Tipos de Documento de Identidad - MINSA"
Description: "Conjunto de valores para los tipos de documento de identidad utilizados en el sistema de inmunizaciones del Perú"

* ^status = #active
* ^name = "MINSAIdentifierTypeVS"

* include codes from system MINSAIdentifierTypes

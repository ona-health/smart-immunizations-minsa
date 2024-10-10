// ABOUTME: Perfil de Paciente para inmunizaciones MINSA Perú, extendiendo el perfil IMMZPatient de la OMS.
// ABOUTME: Agrega identificadores DNI y SIS, y extensiones de dirección para Departamento, Provincia y Distrito.

Profile: MINSAPatient
Parent: IMMZPatient
Id: MINSA.Patient
Title: "Paciente MINSA Perú"
Description: "Perfil de Paciente para el programa de inmunizaciones del Ministerio de Salud del Perú (MINSA). Extiende el perfil IMMZPatient de las Directrices SMART de la OMS con identificadores y divisiones administrativas peruanas."

* ^experimental = false
* ^publisher = "MINSA - Ministerio de Salud del Perú"

// Cortes de identificador para documentos peruanos
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains
    dni 1..1 MS and
    sis 0..1 MS

* identifier[dni] ^short = "Documento Nacional de Identidad (DNI)"
* identifier[dni] ^definition = "Número de Documento Nacional de Identidad emitido por RENIEC."
* identifier[dni].system 1..1
* identifier[dni].system = "http://minsa.gob.pe/sid/dni"
* identifier[dni].value 1..1

* identifier[sis] ^short = "Seguro Integral de Salud (SIS)"
* identifier[sis] ^definition = "Número de afiliación al Seguro Integral de Salud."
* identifier[sis].system 1..1
* identifier[sis].system = "http://minsa.gob.pe/sid/sis"
* identifier[sis].value 1..1

// Extensiones de dirección para divisiones administrativas del Perú
* address.extension contains
    MINSADepartamento named departamento 0..1 MS and
    MINSAProvincia named provincia 0..1 MS and
    MINSADistrito named distrito 0..1 MS

* address.extension[departamento] ^short = "Departamento de residencia"
* address.extension[provincia] ^short = "Provincia de residencia"
* address.extension[distrito] ^short = "Distrito de residencia"

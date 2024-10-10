// ABOUTME: Sistema de códigos específicos de MINSA para inmunizaciones en Perú.
// ABOUTME: Incluye vacunas del esquema nacional, números de dosis, vías de administración y razones de no administración.
CodeSystem: MINSA
Title:        "Sistema de Códigos MINSA para Inmunizaciones"
Description:  "Códigos utilizados por el Ministerio de Salud del Perú (MINSA) para el registro electrónico de inmunizaciones"

* ^experimental = false
* ^caseSensitive = false
* ^name = "MINSA"
* ^url = "http://minsa.gob.pe/immunizations/CodeSystem/MINSA"
* ^status = #active

// Vacunas del Esquema Nacional de Vacunación
* #VAC-BCG "BCG" "Vacuna Bacilo de Calmette-Guérin contra la tuberculosis"
* #VAC-OPV "APO - Antipolio Oral" "Vacuna Antipolio Oral (tipo Sabin)"
* #VAC-IPV "APV - Antipolio Inactivada" "Vacuna Antipolio Inactivada (tipo Salk)"
* #VAC-PENTA "Pentavalente" "Vacuna Pentavalente (DPT-HepB-Hib)"
* #VAC-ROTA "Rotavirus" "Vacuna contra Rotavirus"
* #VAC-PCV "Neumococo" "Vacuna Antineumocócica Conjugada"
* #VAC-SPR "SPR" "Vacuna contra Sarampión, Paperas y Rubéola"
* #VAC-HPV "VPH" "Vacuna contra el Virus del Papiloma Humano"
* #VAC-DT "DT Pediátrico" "Vacuna contra Difteria y Tétanos (refuerzo pediátrico)"
* #VAC-INF "Influenza" "Vacuna contra la Influenza"
* #VAC-HEPB "Hepatitis B" "Vacuna contra la Hepatitis B (dosis de recién nacido)"
* #VAC-AMA "Antiamarílica" "Vacuna Antiamarílica (Fiebre Amarilla)"

// Números de dosis
* #DOSE-BIRTH "Dosis de recién nacido" "Dosis administrada dentro de las 24 horas de nacimiento"
* #DOSE-1 "1ra dosis" "Primera dosis de la serie"
* #DOSE-2 "2da dosis" "Segunda dosis de la serie"
* #DOSE-3 "3ra dosis" "Tercera dosis de la serie"
* #DOSE-R1 "1er refuerzo" "Primer refuerzo"
* #DOSE-R2 "2do refuerzo" "Segundo refuerzo"

// Vías de administración
* #ROUTE-ID "Intradérmica" "Administración por vía intradérmica"
* #ROUTE-SC "Subcutánea" "Administración por vía subcutánea"
* #ROUTE-IM "Intramuscular" "Administración por vía intramuscular"
* #ROUTE-VO "Vía oral" "Administración por vía oral"

// Razones de no administración
* #NOREASON-IMMUNITY "Inmunidad" "El paciente ya tiene inmunidad contra la enfermedad"
* #NOREASON-STOCKOUT "Desabastecimiento" "No hay disponibilidad del producto vacunal"
* #NOREASON-PRECAUTION "Precaución médica" "El paciente tiene una condición médica que contraindica temporalmente la vacunación"
* #NOREASON-EXPIRED "Producto vencido" "El producto vacunal está vencido"
* #NOREASON-CLIENT "Rechazo del cliente" "El cliente o su representante rechaza la vacunación"
* #NOREASON-CAREGIVER "Rechazo del cuidador" "El cuidador del niño rechaza la vacunación"
* #NOREASON-ABSENT "Niño no presente" "El niño no se presentó a la cita de vacunación"
* #NOREASON-SICK "Niño enfermo" "El niño presenta enfermedad que posterga la vacunación"
* #NOREASON-AGE "Fuera de rango de edad" "El paciente está fuera del rango de edad indicado para la vacuna"
* #NOREASON-CONTRA "Contraindicado" "La vacuna está contraindicada para el paciente"
* #NOREASON-TIME "Sin tiempo" "No hubo tiempo disponible para administrar la vacuna"
* #NOREASON-OTHER "Otro" "La vacuna no fue administrada por otra razón"

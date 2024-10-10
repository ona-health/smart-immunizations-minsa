# Lógica de Decisión - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Requisitos de Negocio**](business-requirements.md)
* **Lógica de Decisión**

## Lógica de Decisión

Esta página describe la lógica de soporte a la decisión incluida en la adaptación peruana del [Kit de Adaptación Digital de la OMS para Inmunizaciones](https://iris.who.int/handle/10665/380303).

El componente de lógica de soporte a la decisión proporciona la lógica de decisión y los algoritmos, así como la programación de servicios, conforme al esquema nacional de vacunación del Perú establecido en la NTS vigente del MINSA. La lógica de decisión y los algoritmos en esta guía de implementación descomponen las recomendaciones del esquema de vacunación peruano en un formato legible por máquina que identifica claramente las entradas y salidas que serían operacionalizadas en un sistema digital de soporte a la decisión.

### Resumen de la lógica de decisión

La tabla siguiente proporciona un resumen de las tablas de decisión y algoritmos para los diferentes procesos de negocio en un Registro Electrónico de Inmunización (REI). La estructura de las tablas de decisión se basa en una adaptación del Decision Model and Notation (DMN), un estándar para modelar y ejecutar lógica de decisión.

Los esquemas de vacunación y la lógica de programación en este DAK fueron adaptados del esquema genérico de la OMS al esquema nacional peruano. Las tablas de decisión reflejan las políticas nacionales de vacunación del Perú.

**Resumen de tablas de decisión**

| | |
| :--- | :--- |
| **IMMZ.D2.DT.BCG** | Vacunación recomendada con BCG al recién nacido conforme al esquema peruano |
| **IMMZ.D5.DT.BCG contraindicaciones** | Verificación de contraindicaciones para la vacuna BCG |
| **IMMZ.D18.S.BCG esquema** | Esquema de vacunación recomendado para BCG (dosis única al nacer) |
| **IMMZ.D2.DT.Hepatitis B.Dosis neonatal** | Administración recomendada de la dosis neonatal de Hepatitis B (primeras 24 horas de vida) |
| **IMMZ.D5.DT.Hepatitis B contraindicaciones** | Verificación de contraindicaciones para la vacuna contra Hepatitis B |
| **IMMZ.D18.S.Hepatitis B.Dosis neonatal esquema** | Esquema de la dosis neonatal de Hepatitis B |
| **IMMZ.D2.DT.Pentavalente** | Vacunación recomendada con Pentavalente (DPT-HB-Hib) a los 2, 4 y 6 meses conforme al esquema peruano |
| **IMMZ.D5.DT.Pentavalente contraindicaciones** | Verificación de contraindicaciones para la vacuna Pentavalente |
| **IMMZ.D18.S.Pentavalente esquema** | Esquema de vacunación recomendado para Pentavalente (3 dosis) |
| **IMMZ.D2.DT.Polio.IPV más bOPV** | Vacunación recomendada contra Polio siguiendo el esquema IPV + bOPV del Perú |
| **IMMZ.D5.DT.Polio contraindicaciones** | Verificación de contraindicaciones para vacunas contra Polio |
| **IMMZ.D18.S.Polio esquema** | Esquema de vacunación recomendado para Polio (IPV a los 2 y 4 meses, bOPV a los 6 meses y refuerzos) |
| **IMMZ.D2.DT.Rotavirus** | Vacunación recomendada con Rotavirus a los 2 y 4 meses |
| **IMMZ.D5.DT.Rotavirus contraindicaciones** | Verificación de contraindicaciones para la vacuna contra Rotavirus |
| **IMMZ.D18.S.Rotavirus esquema** | Esquema de vacunación recomendado para Rotavirus (2 dosis) |
| **IMMZ.D2.DT.Neumococo** | Vacunación recomendada con Neumococo conjugada a los 2, 4 meses y refuerzo a los 12 meses |
| **IMMZ.D5.DT.Neumococo contraindicaciones** | Verificación de contraindicaciones para la vacuna Neumococo conjugada |
| **IMMZ.D18.S.Neumococo esquema** | Esquema de vacunación recomendado para Neumococo (2 dosis + refuerzo) |
| **IMMZ.D2.DT.SPR** | Vacunación recomendada con SPR (Sarampión, Paperas, Rubéola) a los 12 y 18 meses |
| **IMMZ.D5.DT.SPR contraindicaciones** | Verificación de contraindicaciones para la vacuna SPR |
| **IMMZ.D18.S.SPR esquema** | Esquema de vacunación recomendado para SPR (2 dosis) |
| **IMMZ.D2.DT.Varicela** | Vacunación recomendada con Varicela a los 12 meses |
| **IMMZ.D5.DT.Varicela contraindicaciones** | Verificación de contraindicaciones para la vacuna contra Varicela |
| **IMMZ.D18.S.Varicela esquema** | Esquema de vacunación recomendado para Varicela (dosis única) |
| **IMMZ.D2.DT.Fiebre Amarilla** | Vacunación recomendada con Fiebre Amarilla a los 15 meses |
| **IMMZ.D5.DT.Fiebre Amarilla contraindicaciones** | Verificación de contraindicaciones para la vacuna contra Fiebre Amarilla |
| **IMMZ.D18.S.Fiebre Amarilla esquema** | Esquema de vacunación recomendado para Fiebre Amarilla (dosis única) |
| **IMMZ.D2.DT.Hepatitis A** | Vacunación recomendada con Hepatitis A a los 15 meses |
| **IMMZ.D5.DT.Hepatitis A contraindicaciones** | Verificación de contraindicaciones para la vacuna contra Hepatitis A |
| **IMMZ.D18.S.Hepatitis A esquema** | Esquema de vacunación recomendado para Hepatitis A (dosis única) |
| **IMMZ.D2.DT.DPT refuerzo** | Vacunación recomendada con DPT refuerzo a los 18 meses y 4 años |
| **IMMZ.D5.DT.DPT contraindicaciones** | Verificación de contraindicaciones para la vacuna DPT |
| **IMMZ.D18.S.DPT refuerzo esquema** | Esquema de vacunación recomendado para refuerzos de DPT (2 refuerzos) |
| **IMMZ.D2.DT.VPH** | Vacunación recomendada con VPH para niñas de 9 a 13 años |
| **IMMZ.D5.DT.VPH contraindicaciones** | Verificación de contraindicaciones para la vacuna contra VPH |
| **IMMZ.D18.S.VPH esquema** | Esquema de vacunación recomendado para VPH (2 dosis) |
| **IMMZ.D2.DT.Influenza** | Vacunación recomendada con Influenza estacional para niños de 6 meses a 2 años, gestantes y adultos mayores |
| **IMMZ.D5.DT.Influenza contraindicaciones** | Verificación de contraindicaciones para la vacuna contra Influenza |
| **IMMZ.D18.S.Influenza esquema** | Esquema de vacunación recomendado para Influenza estacional |
| **IMMZ.D2.DT.dT** | Vacunación recomendada con dT para gestantes, MEF y adultos |
| **IMMZ.D5.DT.dT contraindicaciones** | Verificación de contraindicaciones para la vacuna dT |
| **IMMZ.D18.S.dT esquema** | Esquema de vacunación recomendado para dT |


# Adaptación para Perú - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Inicio**](index.md)
* **Adaptación para Perú**

## Adaptación para Perú

La siguiente página proporciona una referencia sobre cómo esta guía de implementación fue adaptada desde las directrices genéricas de la OMS para el contexto del Perú.

### Proceso de adaptación L2 a L3

La OMS articula y respalda recomendaciones rigurosamente probadas para intervenciones de salud que deben ser adoptadas dentro de los programas de cada país. Para asegurar que los países puedan beneficiarse efectivamente de las inversiones en salud digital, el enfoque SMART Guidelines está diseñado para facilitar la reflexión precisa de las guías clínicas, de salud pública y de uso de datos de la OMS en los sistemas digitales que los países están adoptando.

Para más información sobre las capas de representación del conocimiento y cómo se utilizan en el enfoque SMART Guidelines de la OMS, consulte [WHO SMART Guidelines](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines) y este [artículo en The Lancet](https://www.thelancet.com/journals/landig/article/PIIS2589-7500(21)00038-8/fulltext).

Los artefactos técnicos basados en estándares en esta guía de implementación se encuentran en la tercera capa de representación del conocimiento (L3: Recomendaciones legibles por máquina). Proporcionan el código necesario para que los desarrolladores de software incorporen la lógica estandarizada de las guías de la OMS en los sistemas digitales, verificable para la conformidad con estándares incluyendo la fidelidad a las recomendaciones.

### Adaptaciones específicas para el Perú

La adaptación de las guías genéricas de la OMS al contexto peruano incluyó los siguientes aspectos:

#### Esquema de vacunación

* **Calendario ajustado**: El esquema nacional de vacunación del Perú, establecido por la NTS vigente del MINSA, difiere en algunos aspectos del esquema genérico de la OMS. Las tablas de decisión y la lógica de programación fueron ajustadas para reflejar las edades, intervalos y dosis específicas del esquema peruano.
* **Antígenos específicos**: Se priorizaron los antígenos incluidos en el esquema regular peruano: BCG, Hepatitis B (dosis neonatal), Pentavalente (DPT-HB-Hib), IPV/bOPV, Rotavirus, Neumococo conjugada, SPR, Varicela, Fiebre Amarilla, Hepatitis A, DPT (refuerzos), VPH, Influenza estacional y dT.
* **Vacunas combinadas**: El Perú utiliza la vacuna Pentavalente (DPT-HB-Hib) como vacuna combinada principal en el esquema infantil, lo cual requirió ajustes en la lógica de decisión para manejar los múltiples antígenos contenidos en una sola administración.

#### Modelo de datos

* **Identificación del paciente**: Se incorporó el uso del Documento Nacional de Identidad (DNI) emitido por RENIEC como identificador principal, así como el Código Único de Identidad (CUI) para recién nacidos.
* **Estructura organizacional**: Los perfiles de organización fueron adaptados para reflejar la estructura del sistema de salud peruano: MINSA, DIRESA/GERESA, Redes de Salud, Microrredes y Establecimientos de Salud, según el Registro Nacional de Establecimientos de Salud (RENAES).
* **Aseguramiento**: Se incluyó la referencia al Seguro Integral de Salud (SIS) y otros seguros (EsSalud, privados) como parte de la información del paciente.

#### Terminología

* Se mantuvieron los códigos internacionales (SNOMED CT GPS, ATC, ICD-11) del DAK genérico de la OMS como vocabulario de referencia.
* Se crearon mapeos hacia códigos utilizados en los sistemas nacionales del MINSA (HIS, SIEN).

#### Indicadores

* Los indicadores fueron adaptados para alinearse con los requerimientos de reporte del MINSA, incluyendo los indicadores del HIS-MINSA y los reportes de cobertura de la ESNI.
* Se incluyeron desagregaciones por departamento, provincia, distrito, grupo etario y tipo de establecimiento, conforme a las necesidades de monitoreo regional.

#### Flujos de trabajo

* Los procesos de negocio fueron adaptados para reflejar el flujo de trabajo típico en los establecimientos de salud del primer nivel de atención en el Perú, incluyendo la captación de niños en el ámbito comunitario por parte de los agentes comunitarios de salud (ACS).

### Guía para futuras adaptaciones

Los gobiernos regionales y locales que deseen adaptar esta guía para contextos subnacionales deben considerar:

1. **Revisar el esquema de vacunación**: Verificar que el esquema implementado corresponde a la NTS vigente y a cualquier disposición regional complementaria.
1. **Adaptar las personas**: Ajustar los roles y competencias de las personas según la realidad del recurso humano en su jurisdicción.
1. **Personalizar terminología**: Agregar códigos locales si los sistemas de información regionales utilizan catálogos propios.
1. **Ajustar indicadores**: Incorporar indicadores adicionales requeridos por la DIRESA/GERESA local.


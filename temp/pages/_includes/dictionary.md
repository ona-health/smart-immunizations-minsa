El Componente 5 del [Kit de Adaptación Digital de la OMS para Inmunizaciones](https://iris.who.int/handle/10665/380303) describe el conjunto mínimo de datos correspondientes a los diferentes puntos del flujo de trabajo dentro de los procesos de negocio identificados. Este conjunto de datos puede ser utilizado en cualquier sistema de software y enumera los elementos de datos relevantes para la prestación de servicios, la ejecución de la lógica de decisión, así como para la alimentación de indicadores y métricas de desempeño.

### Diccionario de datos del contexto peruano

El diccionario de datos para la adaptación peruana extiende el diccionario base de la OMS con los siguientes grupos de elementos:

| Grupo de datos | Descripción |
|---|---|
| IMMZ.C. Registro del paciente | Datos demográficos del paciente incluyendo DNI/CUI (RENIEC), nombre, fecha de nacimiento, sexo, dirección (ubigeo), establecimiento de salud asignado, tipo de seguro (SIS, EsSalud, otro). |
| IMMZ.D. Administración de vacuna | Datos de la vacunación: tipo de vacuna, número de dosis, fecha de administración, lote, fecha de vencimiento, fabricante, vía de administración, sitio de inyección, profesional que administra, establecimiento de salud. |
| IMMZ.D5. Contraindicaciones | Datos para la verificación de contraindicaciones previas a la vacunación: alergias conocidas, reacciones adversas previas, condiciones de inmunosupresión, embarazo, enfermedad aguda. |
| IMMZ.E. Recordatorio | Datos para la generación de recordatorios: teléfono de contacto, próxima cita programada, vacunas pendientes. |
| IMMZ.F. Seguimiento de inasistentes | Datos para el seguimiento: fecha de última vacunación, vacunas atrasadas, dirección domiciliaria, ACS asignado. |
| IMMZ.I. Reportes | Datos agregados para reportes de cobertura, deserción, stock e indicadores de la ESNI. |

### Elementos de datos clave para el Perú

Los elementos de datos específicos del contexto peruano incluyen:

| Elemento | Tipo | Descripción |
|---|---|---|
| DNI / CUI | Identificador | Documento Nacional de Identidad o Código Único de Identidad (recién nacidos). Emitido por RENIEC. |
| Ubigeo | Código | Código de ubicación geográfica estándar del INEI (departamento, provincia, distrito). |
| Código RENAES | Código | Código único del establecimiento de salud en el Registro Nacional de Establecimientos de Salud. |
| Tipo de seguro | Código | SIS, EsSalud, Fuerzas Armadas y Policiales, Privado, Ninguno. |
| Código HIS | Código | Código de la prestación en el Sistema HIS-MINSA para el registro de la atención de vacunación. |
| Nombre de la madre | Texto | Dato utilizado para la identificación del menor, especialmente cuando no se cuenta con DNI/CUI. |

Los elementos de datos se representan como perfiles de recursos FHIR, incluyendo Patient, Immunization, ImmunizationRecommendation, Observation, y Questionnaire/QuestionnaireResponse. Consulte el [Índice de Artefactos](artifacts.html) para la lista completa de definiciones.

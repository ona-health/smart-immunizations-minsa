Esta sección contiene los modelos de datos y los protocolos de intercambio de datos con actores y transacciones definidas. Es parte de la representación de conocimiento legible por máquina (L3).

Las páginas incluidas en esta sección se describen a continuación.

- [**Actores del sistema**](system-actors.html) - Lista y descripción de las entidades de software o humanas que interactúan con el sistema, derivadas de los requisitos de negocio definidos en el L2.
- [**Diagramas de secuencia**](sequence-diagrams.html) - Diagramas de secuencia que representan las interacciones entre los actores del sistema, en orden, derivados de los procesos de negocio del L2.
- [**Transacciones**](transactions.html) - Lista definida de transacciones del sistema a nivel atómico para cada actor junto con narrativa, declaraciones de capacidad, definiciones de estructura, cuestionarios y composiciones.
- [**Modelos lógicos**](#) - Recursos StructureDefinition que describen las definiciones de elementos de datos y sus reglas de uso asociadas, derivados del diccionario de datos del L2.
- [**Indicadores y medidas**](indicators-measures.html) - Lista temática de indicadores definidos en la guía de implementación.

### Documentación de diseño

La documentación a continuación detalla cómo utilizar esta GI para ejecutar la lógica de decisión y los recursos requeridos, incluyendo PlanDefinitions, ActivityDefinitions, ValueSets y Libraries.

#### PlanDefinitions

La lógica de vacunación ha sido representada como recursos FHIR PlanDefinition conformes a la guía [CPG-ComputablePlanDefinition](http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computableplandefinition). Existe un PlanDefinition para cada antígeno del esquema peruano (BCG, Hepatitis B, Pentavalente, Polio, Rotavirus, Neumococo, SPR, Varicela, Fiebre Amarilla, Hepatitis A, DPT, VPH, Influenza, dT). La intención de este diseño es que cada implementación pueda utilizar únicamente los antígenos requeridos para su contexto.

Estos PlanDefinitions se encuentran en el [Índice de Artefactos](artifacts.html).

#### ActivityDefinitions

Para representar las actividades que deben realizarse, esta guía sigue los patrones de flujo de trabajo establecidos por la especificación base de FHIR. Cada antígeno representado como PlanDefinition será procesado para producir ActivityDefinitions conformes a [CPG-ActivityProfiles](http://hl7.org/fhir/uv/cpg/profiles.html#activity-profiles).

#### Biblioteca FHIR (Library)

La FHIR Library contiene una biblioteca CQL codificada en base64 que representa la lógica de decisión como una serie de cláusulas booleanas. Cada PlanDefinition y Measure hace referencia a una Library desde la cual se puede ejecutar cada punto de decisión.

#### ValueSets

Muchos de los ValueSets utilizados en esta GI provienen de [CPG on FHIR](https://hl7.org/fhir/uv/cpg/) y el [IPS](https://hl7.org/fhir/uv/ips/). Se han generado ValueSets adicionales basados en los escenarios de usuario del contexto peruano, incluyendo mapeos hacia los códigos del sistema HIS-MINSA.

Los ValueSets de vacunas mapean códigos entre diferentes sistemas incluyendo SNOMED CT GPS y WHO ATC para permitir la búsqueda de cualquier vacuna aplicable al contexto peruano.

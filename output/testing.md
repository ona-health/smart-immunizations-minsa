# Pruebas - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Despliegue**](deployment.md)
* **Pruebas**

## Pruebas

Esta página incluye los artefactos de prueba para esta guía de implementación.

Los artefactos incluyen archivos Gherkin (.feature) con criterios de aceptación para cada definición de prueba, y con casos de prueba definidos para PlanDefinitions y Measures. Los datos de ejemplo están en forma de archivos FHIR Shorthand (FSH) o Recursos FHIR, con ejemplos listados en la pestaña de ejemplos de los recursos.

Consulte [Datos de prueba](test-data.md) para los datos de prueba.

Los artefactos de prueba en esta guía de implementación no están destinados a ser utilizados para determinar la conformidad formal, ni pretenden ser autoritativos o exhaustivos.

### Enfoque de pruebas

Las pruebas de esta guía de implementación se organizan en los siguientes niveles:

#### Pruebas unitarias de lógica CQL

Cada biblioteca CQL tiene pruebas unitarias que verifican:

* El cálculo correcto de las vacunas pendientes según la edad del paciente
* La detección de contraindicaciones
* El cálculo de intervalos mínimos entre dosis
* La generación correcta de recomendaciones de vacunación

#### Pruebas de integración de PlanDefinitions

Los PlanDefinitions son probados con datos de pacientes de ejemplo para verificar:

* La generación correcta de ActivityDefinitions para cada antígeno del esquema peruano
* El comportamiento ante esquemas incompletos, atrasados y con contraindicaciones
* La consistencia de las recomendaciones con el esquema nacional de vacunación

#### Pruebas de Measures

Los Measures son probados para verificar:

* El cálculo correcto de numeradores y denominadores de los indicadores de cobertura
* Las desagregaciones por ámbito geográfico y grupo etario
* La consistencia con los formatos de reporte del HIS-MINSA

#### Pruebas de Questionnaires y StructureMaps

Se verifican:

* La correcta extracción de datos desde QuestionnaireResponse hacia recursos FHIR
* La precarga de datos del paciente desde el registro existente
* La validación de campos obligatorios y reglas de negocio

### Plataformas de prueba

Estos archivos permiten una configuración rápida de servidores de trabajo para probar la especificación en una configuración conocida.

Prerrequisitos: [Docker](https://www.docker.com)

#### Cuestionarios y transformaciones StructureMap

La configuración del servidor matchbox permite probar los mapeos. Para más información: [https://github.com/ahdis/matchbox](https://github.com/ahdis/matchbox)

Cómo configurar el servidor:

1. Descargue el[archivo .env](https://raw.githubusercontent.com///main/testing/docker/questionnaires/.env)
1. Descargue el[archivo docker compose](https://raw.githubusercontent.com///main/testing/docker/questionnaires/docker-compose.yml)
1. Desde la misma carpeta, ejecute`docker-compose up -d`
1. Navegue a http://localhost:8087
1. Siga las instrucciones para configurar y ejecutar las extracciones

#### Lógica de decisión y programación, Measures

CQFRuler:

1. Descargue el[archivo .env](https://raw.githubusercontent.com///main/testing/docker/logic/.env)
1. Descargue el[archivo docker compose](https://raw.githubusercontent.com///main/testing/docker/logic/docker-compose.yml)
1. Desde la misma carpeta, ejecute`docker-compose up -d`
1. Navegue a http://localhost:8080
1. Siga las instrucciones para configurar y ejecutar los PlanDefinitions


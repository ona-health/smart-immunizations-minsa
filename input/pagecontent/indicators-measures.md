El recurso FHIR Measure se utiliza para describir los indicadores en un formato computable. Estos indicadores pueden ser agregados automáticamente desde la herramienta de seguimiento digital para alimentar el sistema de información de gestión en salud (HIS-MINSA).

Los Measures incluidos en esta guía de implementación se listan en el [Índice de Artefactos - Measures](artifacts.html).

Para las descripciones operacionales de los indicadores y sus referencias, consulte el [Kit de Adaptación Digital de la OMS para Inmunizaciones](https://iris.who.int/handle/10665/380303). El contenido resumido de los indicadores adaptados al contexto peruano se presenta en la página de <a href="indicators.html">Indicadores y Métricas de Desempeño</a>.

### Measures definidos

Los Measures en esta guía de implementación representan los indicadores de cobertura vacunal y de proceso del programa de inmunizaciones del Perú. Cada Measure:

- Define un numerador y denominador usando expresiones CQL
- Referencia una Library que contiene la lógica de cálculo
- Especifica las desagregaciones disponibles (departamento, provincia, distrito, grupo etario, sexo)
- Está alineado con los indicadores requeridos por la ESNI y el HIS-MINSA

### Generación de MeasureReports

Los MeasureReports se generan ejecutando la operación `$evaluate-measure` contra los datos del período y ámbito geográfico solicitado. Los reportes resultantes contienen los datos agregados que pueden ser:

- Visualizados en tableros de control (dashboards) de cobertura vacunal
- Exportados en formatos compatibles con el HIS-MINSA
- Transmitidos al nivel regional (DIRESA/GERESA) y nacional (ESNI) para la consolidación

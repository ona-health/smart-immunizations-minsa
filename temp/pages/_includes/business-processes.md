Esta página describe los procesos de negocio incluidos en la adaptación peruana del [Kit de Adaptación Digital (DAK) de la OMS para Inmunizaciones](https://iris.who.int/handle/10665/380303).

Un proceso de negocio es un conjunto de actividades o tareas relacionadas que se realizan en conjunto para alcanzar los objetivos del programa de inmunizaciones, tales como registro, consejería, referencias. Los flujos de trabajo son una representación visual de la progresión de actividades (tareas, eventos, interacciones) que se realizan dentro del proceso de negocio.

El DAK para Inmunizaciones se enfoca en los procesos de negocio clave que forman parte de los programas de inmunización de rutina y las campañas de vacunación masiva, adaptados al contexto operativo del MINSA.

### Resumen de procesos de negocio clave

La siguiente tabla describe los flujos de trabajo de los procesos incluidos.

| # | Nombre del proceso | ID del proceso | Personas | Objetivos |
|---|---|---|---|---|
| A | Registro del establecimiento de vacunación | IMMZ.A | Personal de TI, Coordinador ESNI | Todos los establecimientos de salud que administran vacunas deben estar registrados en el RENAES y en el sistema de inmunización para permitir el seguimiento adecuado de la cobertura y el stock de vacunas. |
| B | Planificación de la prestación del servicio | IMMZ.B | Enfermera vacunadora, Coordinador ESNI | Preparar la sesión de vacunación asegurando el abastecimiento suficiente de vacunas, jeringas y materiales, verificar la cadena de frío y organizar la carga de trabajo. Incluye la elaboración del padrón nominado. |
| C | Registro del paciente | IMMZ.C | Madre/Padre/Cuidador, Enfermera vacunadora | Crear y/o actualizar el registro de vacunación del paciente incluyendo datos personales (DNI/CUI, datos de RENIEC) para apoyar la administración futura de vacunas. |
| D | Administrar vacuna | IMMZ.D | Enfermera vacunadora | Determinar qué vacunas necesita el paciente según el esquema nacional, verificar contraindicaciones, administrar las vacunas y registrar los datos relevantes tanto en el sistema electrónico como en el carné de vacunación. |
| E | Recordatorio al paciente | IMMZ.E | Enfermera vacunadora, ACS | Recordar a los padres/cuidadores que es momento de regresar para la siguiente dosis de vacunación, mediante llamada telefónica, mensaje o visita domiciliaria. |
| F | Seguimiento de inasistentes | IMMZ.F | Enfermera vacunadora, ACS | Identificar a las personas con esquema de vacunación atrasado y contactarlas para programar su vacunación. Incluye la búsqueda activa en la comunidad por parte del ACS. |
| G | Resolución de registros duplicados | IMMZ.G | Enfermera vacunadora, Personal de TI | Identificar registros duplicados del paciente y consolidarlos en un solo registro preciso, utilizando el DNI/CUI como identificador único. |
| H | Resolución de eventos de vacunación duplicados | IMMZ.H | Enfermera vacunadora, Personal de TI | Identificar eventos de vacunación duplicados dentro del registro de un paciente y actualizar a un solo evento correcto. |
| I | Generación de reportes | IMMZ.I | Enfermera vacunadora, Coordinador ESNI, Digitador | Generar reportes de cobertura vacunal, deserción, stock de vacunas y ESAFI para el HIS-MINSA y la supervisión de la ESNI. |
{: .grid }

### Flujos de trabajo

Los flujos de trabajo que se presentan a continuación representan procesos que han sido generalizados y adaptados al contexto peruano. La simplicidad del flujo puede no ilustrar adecuadamente los pasos no lineales que pueden ocurrir en la práctica.

#### Resumen de los flujos de procesos clave de inmunización

Los procesos de negocio incluidos en el DAK se muestran utilizando la forma de "Actividad con subproceso" que incluye un signo de más.

#### A. Registro del establecimiento de vacunación
Objetivo: Asegurar que todos los establecimientos de salud que administran vacunas estén registrados en el RENAES y en el sistema de inmunización electrónico, con su código único de establecimiento, para permitir el seguimiento adecuado de la cobertura y el stock de vacunas.

#### B. Planificación de la prestación del servicio
Objetivo: Preparar la sesión de vacunación asegurando el abastecimiento suficiente de vacunas y materiales. Incluye la elaboración del padrón nominado con base en los datos de RENIEC y los registros de nacimiento, la verificación de la cadena de frío, y la coordinación con los ACS para la captación de población.

#### C. Registro del paciente
Objetivo: Crear y/o actualizar el registro de vacunación del paciente utilizando el DNI o CUI como identificador principal. Incluye la verificación con RENIEC, el registro de datos demográficos, la dirección, el establecimiento de salud asignado y la información del seguro (SIS u otro).

#### D. Administrar vacuna
Objetivo: Determinar qué vacunas necesita el paciente según el esquema nacional vigente, evaluar contraindicaciones, administrar las vacunas correspondientes y registrar los datos relevantes (vacuna, dosis, lote, fecha de vencimiento, vía de administración, sitio de inyección) en el sistema electrónico y en el carné de vacunación.

#### E. Recordatorio al paciente
Objetivo: Recordar a los padres/cuidadores sobre las próximas citas de vacunación mediante los canales disponibles (llamada telefónica, SMS, visita domiciliaria del ACS).

#### F. Seguimiento de inasistentes
Objetivo: Identificar a los niños y personas con esquema de vacunación atrasado, generar listas de seguimiento y coordinar con los ACS para la búsqueda activa en la comunidad. Este proceso es fundamental para cerrar brechas de cobertura.

#### G. Resolución de registros duplicados
Objetivo: Identificar registros duplicados del paciente utilizando algoritmos de coincidencia basados en DNI/CUI, nombre, fecha de nacimiento y nombre de la madre. Consolidar los registros en uno solo manteniendo el historial completo de vacunación.

#### H. Resolución de eventos de vacunación duplicados
Objetivo: Identificar eventos de vacunación duplicados dentro del registro de un paciente (por ejemplo, por digitación doble) y corregir el registro manteniendo solo el evento válido.

#### I. Generación de reportes
Objetivo: Generar reportes periódicos de cobertura vacunal, tasa de deserción, oportunidades perdidas, stock de vacunas y ESAFI. Los reportes deben ser compatibles con los formatos requeridos por el HIS-MINSA y los indicadores de la ESNI a nivel nacional, regional, provincial y distrital.

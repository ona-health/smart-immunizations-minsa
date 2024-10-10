El Componente 3 del [Kit de Adaptación Digital de la OMS para Inmunizaciones](https://iris.who.int/handle/10665/380303) incluye escenarios de usuario, que son narrativas que describen cómo las diferentes personas pueden interactuar entre sí. Los siguientes escenarios han sido adaptados al contexto peruano.

**Cómo interpretar los escenarios de usuario**

Los escenarios de usuario son herramientas útiles no solo para comprender mejor el contexto en el que operaría una herramienta digital, sino también para identificar los elementos de datos clave que necesitan ser registrados. Además, el contexto ilustrado por los escenarios proporciona información sobre requisitos funcionales y no funcionales que el sistema necesita.

### Escenario 1: Vacunación regular en establecimiento de salud

María, madre de un niño de 2 meses llamado Luis, acude al Centro de Salud San Juan para la vacunación de su hijo. La enfermera vacunadora, Rosa, verifica el carné de vacunación y el CUI del niño en el sistema. Confirma que Luis necesita recibir la primera dosis de Pentavalente, IPV y Rotavirus. Rosa evalúa que no hay contraindicaciones, prepara las vacunas verificando la cadena de frío, administra las tres vacunas y registra la atención en el carné físico y en el HIS-MINSA. Brinda consejería a María sobre posibles reacciones post-vacunales y le indica la fecha de la próxima cita para las vacunas de los 4 meses.

### Escenario 2: Captación de niño con esquema incompleto por ACS

Juan, agente comunitario de salud de la comunidad de Huaylas, identifica durante su visita domiciliaria que la niña Ana, de 8 meses, no ha recibido su tercera dosis de Pentavalente ni las vacunas correspondientes a los 6 meses. Juan registra el hallazgo y acompaña a la madre al puesto de salud más cercano. La enfermera verifica el historial de vacunación en el sistema, identifica las vacunas pendientes y procede a administrarlas, actualizando el registro electrónico.

### Escenario 3: Vacunación en campaña de barrido

La DIRESA Cusco organiza una campaña de barrido de vacunación contra SPR en el distrito de Anta debido a una baja cobertura detectada. El equipo de vacunación, compuesto por una enfermera y un técnico de enfermería, se desplaza a las comunidades con los termos de vacunas. Utilizan el padrón nominado para identificar a los niños de 12 a 23 meses que no han recibido la primera dosis de SPR. Vacunan a los niños identificados, registran las vacunaciones en formatos manuales y al regresar al establecimiento, el digitador ingresa los datos en el sistema.

### Escenario 4: Vacunación de gestante en control prenatal

Carmen, gestante de 28 semanas, acude a su control prenatal en el Centro de Salud Miraflores. Durante la atención, la obstetra verifica en el sistema que Carmen no tiene registro de vacunación con dT durante esta gestación. Refiere a Carmen al consultorio de vacunación donde la enfermera le administra la primera dosis de dT y la vacuna de Influenza estacional. Se programa la segunda dosis de dT para las 32 semanas.

### Escenario 5: Notificación de ESAFI

Después de recibir la vacuna BCG, el recién nacido Pedro presenta una reacción local severa. La enfermera del establecimiento de salud identifica el evento, notifica al coordinador ESNI de la Red de Salud utilizando la ficha de notificación de ESAFI, y registra el evento adverso en el sistema. El coordinador realiza la investigación del caso y reporta al INS según los protocolos establecidos.

### Escenario 6: Vacunación VPH en institución educativa

El equipo de salud del Centro de Salud La Victoria coordina con la directora de la Institución Educativa N° 1234 para realizar la vacunación contra VPH a las niñas de 9 a 13 años. Previamente, se envían los consentimientos informados a los padres. El día de la vacunación, la enfermera verifica los consentimientos firmados, administra la primera dosis de VPH a las niñas autorizadas y registra las vacunaciones. Se coordina la segunda dosis según el intervalo establecido en el esquema nacional.

### Elementos identificados en los escenarios

Los escenarios anteriores identifican:
- Elementos de datos clave que necesitan ser registrados y/o calculados (DNI/CUI, carné de vacunación, dosis administrada, lote, fecha de vencimiento, cadena de frío)
- Lógica de decisión que puede ser automatizada en el sistema (vacunas pendientes según edad y esquema, contraindicaciones, intervalos mínimos)
- Requisitos funcionales y no funcionales (trabajo sin conexión para zonas rurales, impresión de carné, interoperabilidad con HIS-MINSA)
- Consideraciones específicas del contexto peruano (barridos, visitas domiciliarias, vacunación en instituciones educativas, zonas de difícil acceso)

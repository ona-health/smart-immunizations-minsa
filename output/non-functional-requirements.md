# Requisitos No Funcionales - Guía de Implementación de Inmunizaciones MINSA Perú v1.0.0

* [**Table of Contents**](toc.md)
* [**Requisitos de Negocio**](business-requirements.md)
* **Requisitos No Funcionales**

## Requisitos No Funcionales

Los requisitos no funcionales proporcionan los atributos y características generales del sistema digital para asegurar la usabilidad y superar las restricciones técnicas y físicas. Ejemplos de requisitos no funcionales incluyen la capacidad de trabajo sin conexión, configuración de idioma y protección por contraseña.

Estos requisitos se basan en el [Kit de Adaptación Digital de la OMS para Inmunizaciones](https://iris.who.int/handle/10665/380303), adaptados a las condiciones operativas del sistema de salud peruano.

### Requisitos no funcionales

| | | | |
| :--- | :--- | :--- | :--- |
| IMMZ.NFXNREQ.001 | Conectividad | El sistema debe funcionar en modo sin conexión (offline) y sincronizar datos cuando se restablezca la conectividad | Muchos establecimientos de salud en zonas rurales y de frontera del Perú tienen conectividad limitada o intermitente |
| IMMZ.NFXNREQ.002 | Idioma | El sistema debe estar disponible en español como idioma principal | Español es el idioma oficial y de uso predominante en los establecimientos de salud |
| IMMZ.NFXNREQ.003 | Rendimiento | El sistema debe responder en menos de 3 segundos para las operaciones comunes de registro y consulta | Necesario para no entorpecer el flujo de trabajo durante las sesiones de vacunación con alta demanda |
| IMMZ.NFXNREQ.004 | Seguridad | El sistema debe requerir autenticación de usuario con credenciales únicas | Cada usuario debe ser identificable para la trazabilidad de los registros |
| IMMZ.NFXNREQ.005 | Seguridad | El sistema debe implementar control de acceso basado en roles (enfermera, coordinador, digitador, administrador) | Los diferentes niveles de acceso protegen los datos y las funciones administrativas |
| IMMZ.NFXNREQ.006 | Privacidad | El sistema debe cumplir con la Ley N° 29733 de Protección de Datos Personales del Perú | Requisito legal para el manejo de datos personales de salud |
| IMMZ.NFXNREQ.007 | Auditoría | El sistema debe mantener un registro de auditoría de todas las transacciones (creación, modificación, eliminación de registros) | Necesario para la trazabilidad y la resolución de discrepancias |
| IMMZ.NFXNREQ.008 | Disponibilidad | El sistema debe estar disponible al menos el 99% del tiempo durante las horas de operación de los establecimientos de salud | La indisponibilidad del sistema no debe impedir la prestación del servicio de vacunación |
| IMMZ.NFXNREQ.009 | Escalabilidad | El sistema debe soportar el registro de al menos 500,000 vacunaciones mensuales a nivel nacional | Volumen estimado de vacunaciones del programa regular del MINSA |
| IMMZ.NFXNREQ.010 | Dispositivos | El sistema debe ser compatible con dispositivos de escritorio, tablets y smartphones | Los establecimientos de salud utilizan diversos dispositivos según su nivel y ubicación |
| IMMZ.NFXNREQ.011 | Interoperabilidad | El sistema debe ser capaz de intercambiar datos con el HIS-MINSA, RENIEC y SIS mediante estándares abiertos | Necesario para la integración con los sistemas nacionales existentes |
| IMMZ.NFXNREQ.012 | Respaldo | El sistema debe realizar copias de seguridad automáticas de los datos al menos una vez al día | Prevención de pérdida de datos en caso de fallo del sistema |
| IMMZ.NFXNREQ.013 | Usabilidad | El sistema debe poder ser utilizado por personal de salud con capacitación básica en informática | Muchos establecimientos de primer nivel cuentan con personal con habilidades digitales limitadas |
| IMMZ.NFXNREQ.014 | Impresión | El sistema debe permitir la impresión de carnés de vacunación y reportes en impresoras estándar | Los carnés físicos siguen siendo un requisito del programa de inmunizaciones |


Esta página contiene las consideraciones de seguridad y privacidad relacionadas con la guía de implementación de inmunizaciones para el Perú.

Para un conjunto ilustrativo de requisitos no funcionales, que incluyen requisitos de seguridad y privacidad, consulte los [Requisitos No Funcionales](non-functional-requirements.html).

### Marco legal

La protección de datos personales de salud en el Perú se rige por:

- **Ley N° 29733** - Ley de Protección de Datos Personales y su Reglamento (D.S. N° 003-2013-JUS). Establece los principios, derechos, obligaciones y procedimientos para la protección de los datos personales.
- **Ley N° 26842** - Ley General de Salud. Establece el derecho a la confidencialidad de la información médica.
- **Ley N° 30024** - Ley que crea el Registro Nacional de Historias Clínicas Electrónicas. Define el marco para el intercambio de información clínica electrónica.

### Principios de seguridad

#### Autenticación y autorización

- Todos los usuarios del sistema deben ser autenticados con credenciales únicas (usuario y contraseña como mínimo).
- Se recomienda la implementación de autenticación de dos factores para roles con acceso administrativo.
- El acceso debe estar controlado por roles, conforme a las personas definidas en esta guía (enfermera vacunadora, coordinador ESNI, digitador, administrador del sistema).

#### Control de acceso basado en roles

| Rol | Permisos |
|---|---|
| Enfermera vacunadora | Buscar pacientes, registrar pacientes, registrar vacunaciones, consultar historial, generar recordatorios |
| Coordinador ESNI | Todo lo anterior más generar reportes de cobertura, gestionar padrón nominado, supervisar actividades |
| Digitador | Registrar vacunaciones (ingreso de datos), consultar historial |
| Administrador del sistema | Gestión de usuarios, configuración del sistema, gestión de terminología, auditoría |

#### Cifrado

- Todas las comunicaciones entre el cliente y el servidor deben utilizar TLS 1.2 o superior.
- Los datos almacenados localmente en dispositivos (modo offline) deben estar cifrados.
- Las copias de seguridad deben estar cifradas.

#### Auditoría

- Todas las transacciones deben ser registradas en un log de auditoría conforme al perfil IHE ATNA.
- El log de auditoría debe incluir: usuario, fecha/hora, acción realizada, recurso afectado, dirección IP.
- Los registros de auditoría deben ser inmutables y conservarse por un período mínimo de 5 años.

### Principios de privacidad

#### Consentimiento

- El tratamiento de datos personales de salud requiere el consentimiento informado del titular o de su representante legal (en el caso de menores de edad).
- La información sobre el uso de los datos debe ser comunicada de manera clara al padre/madre/cuidador.

#### Minimización de datos

- Solo se deben recolectar y almacenar los datos estrictamente necesarios para la prestación del servicio de vacunación y el cumplimiento de las obligaciones de reporte.

#### Derecho de acceso

- Los pacientes (o sus representantes legales) tienen derecho a acceder a su información de vacunación.
- Los mecanismos de acceso deben cumplir con la Ley N° 29733.

### Consideraciones para zonas rurales

- En establecimientos con operación offline, los datos locales deben estar protegidos contra acceso no autorizado al dispositivo.
- Los procedimientos de sincronización deben garantizar la integridad de los datos transmitidos.
- Se deben establecer protocolos para el manejo de dispositivos perdidos o robados que contengan datos de pacientes.

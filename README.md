1	# Asistente Disciplinario
     2	
     3	Aplicación Flutter para **registrar, visualizar y resumir** novedades disciplinarias de estudiantes de forma simple.
     4	
     5	## Descripción
     6	
     7	Este proyecto implementa un flujo básico para gestión disciplinaria:
     8	
     9	- **Registro de casos** con datos del estudiante, programa, tipo de falta y observaciones.
    10	- **Listado de registros** en tiempo real.
    11	- **Reporte estadístico** por severidad de falta (Leve, Grave, Muy Grave).
    12	
    13	La app está pensada como base académica/prototipo y actualmente usa almacenamiento **en memoria**.
    14	
    15	## Funcionalidades actuales
    16	
    17	1. **Pantalla principal**
    18	   - Navegación a:
    19	     - Registro disciplinario.
    20	     - Reportes.
    21	     - Listado de registros.
    22	
    23	2. **Registro disciplinario**
    24	   - Campos obligatorios:
    25	     - Nombre del estudiante.
    26	     - Programa académico.
    27	     - Tipo de falta.
    28	   - Campo opcional:
    29	     - Observaciones.
    30	   - Validación de campos obligatorios.
    31	   - Confirmación visual al guardar.
    32	
    33	3. **Listado de registros**
    34	   - Muestra cada registro en tarjetas.
    35	   - Incluye nombre, programa, tipo de falta y fecha.
    36	   - Estado vacío cuando aún no existen datos.
    37	
    38	4. **Reportes estadísticos**
    39	   - Total de registros.
    40	   - Conteo por tipo de falta.
    41	   - Barras de progreso para visualizar proporciones.
    42	
    43	## Arquitectura y estructura del proyecto
    44	
    45	```text
    46	lib/
    47	├── main.dart                 # Punto de entrada y menú principal
    48	├── registro_screen.dart      # Formulario de creación de registros
    49	├── listado_screen.dart       # Vista de registros guardados
    50	├── reportes_screen.dart      # Métricas y visualización básica
    51	├── models/
    52	│   └── registro.dart         # Modelo de dominio Registro
    53	└── data/
    54	    └── registros_store.dart  # Store en memoria con ValueNotifier
    55	```
    56	
    57	### Decisiones técnicas
    58	
    59	- **Flutter + Material Design** para interfaz.
    60	- **`ValueNotifier<List<Registro>>`** para estado compartido simple.
    61	- Sin backend ni base de datos por ahora.
    62	
    63	## Requisitos
    64	
    65	- Flutter SDK (recomendado: versión estable reciente).
    66	- Dart SDK compatible con el proyecto (`sdk: ^3.5.3`).
    67	
    68	Verifica instalación con:
    69	
    70	```bash
    71	flutter --version
    72	flutter doctor
    73	```
    74	
    75	## Instalación y ejecución
    76	
    77	1. Clonar repositorio:
    78	
    79	```bash
    80	git clone <URL_DEL_REPOSITORIO>
    81	cd AsistenteDisciplinario
    82	```
    83	
    84	2. Instalar dependencias:
    85	
    86	```bash
    87	flutter pub get
    88	```
    89	
    90	3. Ejecutar la aplicación:
    91	
    92	```bash
    93	flutter run
    94	```
    95	
    96	## Flujo de uso sugerido
    97	
    98	1. Desde el menú principal, abrir **Ir a Registro Disciplinario**.
    99	2. Crear uno o varios registros.
   100	3. Revisar resultados en **Ver Listado de Registros**.
   101	4. Analizar tendencias en **Ver Reportes**.
   102	
   103	## Limitaciones actuales
   104	
   105	- Los datos se guardan solo **en memoria**.
   106	  - Se pierden al cerrar/reiniciar la app.
   107	- No hay autenticación ni roles de usuario.
   108	- No hay exportación de reportes (PDF/Excel/CSV).
   109	- No hay filtros avanzados ni búsqueda.
   110	
   111	## Próximas mejoras recomendadas
   112	
   113	- Persistencia local (por ejemplo, `sqflite` o `hive`).
   114	- Sincronización en la nube (Firebase o API REST).
   115	- Filtros por fecha, programa y tipo de falta.
   116	- Dashboard con gráficos más detallados.
   117	- Gestión de usuarios y permisos.
   118	- Pruebas unitarias y de widgets.
   119	
   120	## Comandos útiles
   121	
   122	```bash
   123	# Obtener dependencias
   124	flutter pub get
   125	
   126	# Ejecutar análisis estático
   127	flutter analyze
   128	
   129	# Ejecutar pruebas
   130	flutter test
   131	```
   132	
   133	## Estado del proyecto
   134	
   135	Proyecto funcional como **MVP académico** para registro y monitoreo disciplinario básico.

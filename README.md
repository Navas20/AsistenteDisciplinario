# 📱 Asistente Disciplinario

Aplicación desarrollada en Flutter para registrar, visualizar y analizar novedades disciplinarias de estudiantes de forma simple.

---

## 📌 Descripción

Este proyecto implementa un flujo básico de gestión disciplinaria:

* Registro de casos con datos del estudiante, programa, tipo de falta y observaciones.
* Listado de registros en tiempo real.
* Reportes estadísticos por severidad de falta (Leve, Grave, Muy Grave).

La app está diseñada como **prototipo académico (MVP)** y actualmente utiliza almacenamiento en memoria.

---

## ⚙️ Funcionalidades

### 1. 🏠 Pantalla principal

* Navegación a:

  * Registro disciplinario
  * Listado de registros
  * Reportes

---

### 2. 📝 Registro disciplinario

* Campos obligatorios:

  * Nombre del estudiante
  * Programa académico
  * Tipo de falta
* Campo opcional:

  * Observaciones
* Validación de campos
* Confirmación visual al guardar

---

### 3. 📋 Listado de registros

* Visualización en tarjetas
* Información mostrada:

  * Nombre
  * Programa
  * Tipo de falta
  * Fecha
* Estado vacío cuando no hay registros

---

### 4. 📊 Reportes estadísticos

* Total de registros
* Conteo por tipo de falta
* Barras de progreso para visualizar proporciones

---

## 🏗️ Arquitectura del Proyecto

```
lib/
├── main.dart                 # Punto de entrada y menú principal
├── registro_screen.dart      # Formulario de creación de registros
├── listado_screen.dart       # Vista de registros guardados
├── reportes_screen.dart      # Métricas y visualización
├── models/
│   └── registro.dart         # Modelo de dominio Registro
└── data/
    └── registros_store.dart  # Estado en memoria (ValueNotifier)
```

---

## 🧠 Decisiones Técnicas

* Flutter + Material Design
* Manejo de estado con `ValueNotifier<List<Registro>>`
* Sin backend ni base de datos (enfoque MVP)

---

## 📋 Requisitos

* Flutter SDK (versión estable recomendada)
* Dart SDK compatible (`sdk: ^3.5.3`)

Verificar instalación:

```bash
flutter --version
flutter doctor
```

---

## 🚀 Instalación y Ejecución

### 1. Clonar repositorio

```bash
git clone <URL_DEL_REPOSITORIO>
cd AsistenteDisciplinario
```

### 2. Instalar dependencias

```bash
flutter pub get
```

### 3. Ejecutar la app

```bash
flutter run
```

---

## 🔄 Flujo de Uso

1. Ir a **Registro Disciplinario**
2. Crear uno o varios registros
3. Consultar en **Listado de Registros**
4. Analizar en **Reportes**

---

## ⚠️ Limitaciones

* Datos almacenados solo en memoria
* Se pierden al cerrar la app
* Sin autenticación ni roles
* Sin exportación de reportes
* Sin filtros avanzados

---

## 🔮 Próximas Mejoras

* Persistencia local (SQLite / Hive)
* Integración con backend (Firebase / API REST)
* Filtros por fecha, programa y tipo de falta
* Dashboard con gráficos avanzados
* Gestión de usuarios y permisos
* Pruebas unitarias y de widgets

---

## 🛠️ Comandos Útiles

```bash
# Obtener dependencias
flutter pub get

# Análisis estático
flutter analyze

# Ejecutar pruebas
flutter test
```

---

## 📌 Estado del Proyecto

✔️ MVP funcional académico
✔️ Listo para demostración y mejora incremental

---

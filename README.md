# 🧪 Demoblaze API Test Automation

Este proyecto contiene pruebas automatizadas para la API de [Demoblaze](https://www.demoblaze.com/), utilizando el framework [Karate DSL](https://github.com/intuit/karate) y reportes enriquecidos con [Cucumber Reporting](https://github.com/damianszczepanik/cucumber-reporting).

## 📦 Estructura del Proyecto

- `src/test/java`: Contiene los runners y utilidades Java.
- `src/test/resources`: Contiene los archivos `.feature`, configuraciones y cuerpos de solicitud.
- `karate-config.js`: Configuración dinámica por entorno (dev, qa, production).
- `logback-test.xml`: Configuración de logging para consola y archivo.
- `build.gradle`: Configuración de dependencias y tareas de test.

## 🚀 Tecnologías Usadas

- **Karate DSL 1.3.1**: Framework para pruebas de API con enfoque BDD.
- **JUnit 5**: Plataforma de ejecución de pruebas.
- **Cucumber Reporting 5.7.8**: Generación de reportes HTML detallados.
- **Gradle 8.14**: Sistema de construcción y gestión de dependencias.

## ⚙️ Configuración

### Requisitos

- Java 8+
- Gradle 7+
- IntelliJ IDEA (opcional pero recomendado)

# 🚀 Ejecución de Pruebas con Karate DSL + Gradle

Este documento describe cómo ejecutar pruebas automatizadas en el proyecto Demoblaze usando Karate DSL y Gradle.

---

## ✅ Ejecutar todas las pruebas del proyecto

```bash
./gradlew test
```
## ✅ Ejecutar pruebas en un ambiente especifico

```bash
./gradlew test -Dkarate.env=variable de ambiente en karate.env 
```

## 📊 Evidencias y Reportes de Karate

Después de ejecutar las pruebas, Karate genera automáticamente evidencias en forma de reportes HTML y archivos de log. Aquí te explico cómo acceder a ellos:

### 📁 Reporte HTML

- Ubicación: target/cucumber-html-reports/

### Para visualizarlo:

1. Abre el archivo `overview-features.html` en tu navegador.
2. Navega entre los escenarios, pasos, y resultados detallados.
3. Puedes ver capturas, logs y métricas por cada ejecución.

### 📄 Log de ejecución

Ubicación: target/karate.log

Este archivo contiene:

- Tiempos de ejecución
- Peticiones y respuestas completas
- Mensajes de consola (`karate.log(...)`)
- Información útil para debugging

### 🧪 Evidencias por escenario

Si usas `karate.log()` o `print` dentro de tus `.feature`, los mensajes se reflejan tanto en consola como en el log. Esto te permite rastrear qué datos se enviaron, qué respuestas se recibieron y cómo se comportó cada escenario.

---

## 👨‍💻 Autoría

Este proyecto fue desarrollado por **Christian Villegas Suarez**

- 📧 Correo: cristvs95@gmail.com
- 📱 Teléfono: +57 302 456 5724


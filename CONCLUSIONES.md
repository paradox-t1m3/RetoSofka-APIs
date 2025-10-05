# ✅ Conclusiones del Proyecto

Este proyecto de automatización de pruebas para la API de Demoblaze, desarrollado con Karate DSL y Gradle, permitió validar múltiples flujos de negocio como login, registro de usuarios y manejo de errores. A lo largo del desarrollo se identificaron varios aprendizajes clave y desafíos técnicos que vale la pena documentar.

---

## 📌 Aprendizajes Clave

- **Karate DSL** ofrece una sintaxis clara y expresiva para definir escenarios BDD, facilitando la colaboración entre QA y desarrollo.
- La configuración dinámica por entorno (`karate.env`) permite ejecutar pruebas en `dev`, `qa` o `production` sin modificar el código fuente.
- El uso de archivos externos (`requestBody.json`) y utilidades (`ReportUtil.java`) promueve la reutilización y el mantenimiento del proyecto.

---

## ⚠️ Dificultades Técnicas

Uno de los principales retos encontrados fue la **replicación y validación de respuestas del servicio**, especialmente en escenarios donde el comportamiento del backend no era intuitivo.

### Ejemplo crítico: Registro exitoso de usuario

- Al registrar un usuario exitosamente, el servicio responde con un **body vacío** (`""`) seguido de un **salto de línea**.
- Este tipo de respuesta complica la validación en Karate, ya que:
    - No hay estructura JSON para hacer `match` directo.
    - El salto de línea puede generar falsos negativos si no se maneja correctamente.
    - La ausencia de contenido impide validar campos como `type`, `message` o `status`.

### Solución aplicada

- Se utilizó validación por longitud (`response == '""\n'`) y expresiones condicionales para evitar fallos y el cumplimiento de la condicion.

---

## 🧠 Recomendaciones

- Documentar explícitamente los comportamientos inesperados del servicio en los escenarios.
- Validar con el equipo de backend si las respuestas pueden estandarizarse para facilitar la automatización.
- Usar `karate.log()` para imprimir respuestas crudas y entender mejor su estructura real.

---

## 👨‍💻 Autoría

Este proyecto fue desarrollado por **Christian Villegas Suarez**

- 📧 Correo: cristvs95@gmail.com
- 📱 Teléfono: +57 302 456 5724
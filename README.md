# Captura de Requerimientos - Sistema CRM

Este repositorio contiene la especificación funcional y técnica para el desarrollo del **Sistema CRM Corporativo (NextGen)**, redactado y maquetado con estándares editoriales en **LaTeX** y exportado a formato PDF ejecutivo.

---

## 📄 Contenido del Documento

El documento formal de requerimientos cubre:

1. **Historial de Versiones:** Registro y control de trazabilidad de cambios formales.
2. **Historias de Usuario (User Stories):** 
   - `HU-001`: Gestión Centralizada de Contactos (Ejecutivo de Ventas).
   - `HU-002`: Gestión del Flujo de Ventas / Pipeline (Director Comercial).
   - `HU-003`: Automatización de Tareas y Recordatorios (Servicio al Cliente).
3. **Integraciones y Criterios de Aceptación:**
   - `INT-01`: Sincronización con Correo Electrónico (Gmail / Outlook vía OAuth 2.0).
   - `INT-02`: Conexión con Sistema ERP / Facturación (API RESTful).
4. **Requerimientos No Funcionales (RNF):**
   - Rendimiento (tiempos de respuesta $< 2\,\text{s}$).
   - Seguridad (TLS 1.3, modelo RBAC y GDPR).
   - Disponibilidad y Escalabilidad (Uptime $99.5\%$, soporte $+50\%$ usuarios concurrentes).
   - Usabilidad y Ergonomía (diseño responsive, registro en $< 3$ clics).
5. **Glosario y Notas Técnicas:** Conceptos clave como API RESTful, OAuth 2.0, RBAC, Uptime, CRM y ERP.

---

## 📁 Archivos Principales

- **[`requerimientos_crm.pdf`](./requerimientos_crm.pdf):** Documento final listo para lectura y distribución ejecutiva.
- **[`requerimientos_crm.tex`](./requerimientos_crm.tex):** Código fuente completo en LaTeX.
- **[`.gitignore`](./.gitignore):** Exclusión de archivos auxiliares generados durante la compilación (`.aux`, `.log`, `.toc`, etc.).

---

## 🛠️ Instrucciones de Compilación (LaTeX)

Si deseas modificar el archivo `.tex` y generar nuevamente el PDF:

```bash
pdflatex -interaction=nonstopmode requerimientos_crm.tex
pdflatex -interaction=nonstopmode requerimientos_crm.tex
```

*(Se recomienda ejecutar el comando dos veces consecutivas para actualizar la tabla de contenidos interactiva y los hipervínculos cruzados).*

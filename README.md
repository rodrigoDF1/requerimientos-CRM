# Captura de Requerimientos - Sistema CRM Corporativo

Repositorio oficial para la gestión, especificación y trazabilidad de los requerimientos de ingeniería de software del **Sistema CRM Corporativo (NextGen)**. 

Este proyecto incluye tanto la versión imprimible y ejecutiva en formato **PDF** (maquetada con estándares tipográficos en **LaTeX**), como especificaciones en formato **Markdown** para consulta rápida y trabajo colaborativo en equipo.

---

## 📂 Estructura del Repositorio

```text
requerimientos-CRM/
├── .github/
│   └── ISSUE_TEMPLATE/                   # Plantillas para proponer requerimientos y cambios
│       ├── nueva_historia_usuario.md
│       └── cambio_requerimiento.md
├── docs/
│   └── requerimientos_crm.pdf            # 📄 Documento PDF final compilado (Índice en pág. propia)
├── requirements/                         # 📋 Especificaciones modulares en Markdown
│   ├── 01_historias_de_usuario.md        # HU-001, HU-002, HU-003
│   ├── 02_integraciones.md               # INT-01 (Correo) e INT-02 (ERP/Facturación)
│   ├── 03_requerimientos_no_funcionales.md # RNF (Rendimiento, Seguridad, Uptime, UX)
│   └── 04_glosario_tecnico.md            # Términos clave (API RESTful, OAuth 2.0, RBAC, etc.)
├── scripts/                              # ⚙️ Scripts de compilación automatizada
│   ├── build.bat                         # Compilación en 1 clic para Windows
│   └── build.sh                          # Compilación en 1 clic para Linux / macOS
├── src/
│   └── requerimientos_crm.tex            # 🖋️ Código fuente completo en LaTeX
├── .gitignore                            # Exclusión de temporales de LaTeX y SO
└── README.md                             # Documentación principal del repositorio
```

---

## 📑 Resumen de Requerimientos

### 1. Historias de Usuario (User Stories)
- **`HU-001` - Gestión Centralizada de Contactos:** Registro, consulta y seguimiento 360° del historial e interacciones de prospectos y clientes (*Ejecutivo de Ventas*).
- **`HU-002` - Gestión del Flujo de Ventas (Pipeline):** Tablero visual por etapas (prospección, negociación, cierre) con métricas de conversión e ingresos proyectados (*Director Comercial*).
- **`HU-003` - Automatización de Tareas y Recordatorios:** Programación desatendida de tareas, llamadas y avisos de seguimiento vinculados al cliente (*Servicio al Cliente*).

### 2. Integraciones y Criterios de Aceptación
- **`INT-01` - Correo Electrónico (Gmail / Outlook):** Sincronización bidireccional mediante autenticación delegada **OAuth 2.0**, vinculación automática al perfil del contacto y soporte de adjuntos.
- **`INT-02` - Sistema ERP y Facturación:** Conexión mediante **API RESTful** para la generación automática de factura borrador ante estado *«Venta Cerrada»*, sincronización de estados de pago y cola de reintentos exponenciales (*backoff*).

### 3. Requerimientos No Funcionales (RNF)
- **Rendimiento (`RNF-01`):** Carga de vistas $< 2\,\text{s}$ y respuestas de API $< 500\,\text{ms}$.
- **Seguridad (`RNF-02`):** Cifrado en tránsito HTTPS (TLS 1.3), control de acceso basado en roles (**RBAC**) y cumplimiento normativo GDPR.
- **Disponibilidad (`RNF-03`):** Uptime garantizado del $99.5\%$ y soporte elástico para un incremento del $+50\%$ de usuarios concurrentes.
- **Usabilidad (`RNF-04`):** Interfaz adaptativa (*responsive*) multi-dispositivo y captura de prospectos en menos de 3 clics.

---

## 🚀 Compilación del Documento LaTeX

El documento final está generado y disponible en [`docs/requerimientos_crm.pdf`](./docs/requerimientos_crm.pdf).

Si realizas cambios en el código fuente [`src/requerimientos_crm.tex`](./src/requerimientos_crm.tex), puedes regenerar el PDF de dos formas:

### Opción 1: Mediante los scripts automatizados
- **En Windows:** Ejecuta con doble clic o desde terminal:
  ```cmd
  scripts\build.bat
  ```
- **En Linux / macOS:**
  ```bash
  chmod +x scripts/build.sh
  ./scripts/build.sh
  ```

### Opción 2: Compilación manual con `pdflatex`
```bash
cd src
pdflatex -interaction=nonstopmode requerimientos_crm.tex
pdflatex -interaction=nonstopmode requerimientos_crm.tex
copy /y requerimientos_crm.pdf ..\docs\requerimientos_crm.pdf
```

---

## 🤝 Cómo Colaborar

1. Si deseas sugerir una nueva historia de usuario, utiliza la plantilla de Issues: **Nueva Historia de Usuario**.
2. Si vas a proponer un cambio en la arquitectura o en una integración existente, utiliza la plantilla **Solicitud de Cambio / Integración**.
3. Envía tus cambios mediante un Pull Request apuntando a la rama `main`.

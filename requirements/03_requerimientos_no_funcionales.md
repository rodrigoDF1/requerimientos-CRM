# Sección 4: Requerimientos No Funcionales (RNF)

Los Requerimientos No Funcionales estipulan las condiciones de calidad, seguridad, eficiencia operativa y experiencia de usuario que el sistema CRM debe satisfacer de forma estricta.

| ID | Categoría | Especificación Técnica | Métrica / Criterio de Aceptación |
|---|---|---|---|
| **RNF-01** | **Rendimiento** | Tiempos de respuesta óptimos en renderizado de vistas y procesamiento en capa de servicios API. | Carga de vistas $< 2\,\text{s}$.<br>Respuestas API $< 500\,\text{ms}$. |
| **RNF-02** | **Seguridad y Cumplimiento** | Cifrado integral de canales en tránsito, control granular de privilegios y observancia de normativas de protección de datos. | HTTPS con TLS 1.3, modelo de permisos basado en roles (RBAC) y cumplimiento GDPR. |
| **RNF-03** | **Disponibilidad y Escalabilidad** | Garantía de continuidad del servicio en entornos productivos y capacidad elástica ante picos de demanda. | Uptime del $99.5\%$ garantizado y soporte para incremento del $50\%$ en usuarios concurrentes. |
| **RNF-04** | **Usabilidad y Accesibilidad** | Diseño ergonómico y adaptativo (*responsive*) optimizado para la agilidad en la gestión diaria de prospectos. | Compatibilidad multidispositivo. Alta y consulta de prospecto en menos de $3$ clics. |

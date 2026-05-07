# 🌿 Práctica SQL – Bases de Datos DAM

> **Módulo**: Bases de Datos · Grado Superior DAM  
> **Curso**: 2025-2026

---

## 📋 Descripción

Practica SQL sobre la base de datos **Jardinería**, una empresa distribuidora de plantas y herramientas de jardín. La BD incluye clientes, pedidos, productos, empleados y pagos.

## 🗂 Estructura del repositorio

```
├── schema.sql                          # Estructura de la BD (tablas y relaciones)
├── datos.sql                           # Datos de ejemplo
├── ejercicios/
│   ├── nivel1_consultas_basicas.sql    # SELECT, WHERE, ORDER BY
│   ├── nivel2_joins.sql                # INNER JOIN, LEFT JOIN, Autojoin
│   ├── nivel3_agregacion.sql           # GROUP BY, HAVING, funciones de agregado
│   └── nivel4_subconsultas.sql         # Subconsultas correlacionadas y no correlacionadas
├── tests/
│   └── run_all_tests.sh                # Script para ejecutar tests localmente
└── .github/workflows/
    └── autograding.yml                 # Corrección automática con GitHub Actions
```

## 🚀 Cómo empezar

### 1. Clona tu repositorio

```bash
git clone <URL-de-tu-repositorio>
cd <nombre-repositorio>
```

### 2. Carga la base de datos

```bash
mysql -u root -p < schema.sql
mysql -u root -p < datos.sql
```

### 3. Resuelve los ejercicios

Abre los archivos de la carpeta `ejercicios/` y escribe tu solución SQL debajo de cada enunciado.

**Ejemplo:**
```sql
-- ej01: Lista el nombre de todos los productos de la BD.
-- Columnas esperadas: nombre
-- Tu solución:
SELECT nombre FROM productos;
```

### 4. Haz commit y push

Cada vez que subas cambios, GitHub Actions comprobará automáticamente que tus consultas no tienen errores de sintaxis.

```bash
git add .
git commit -m "Resuelvo nivel 1 - consultas básicas"
git push
```

## 📊 Diagrama entidad-relación (simplificado)

```
oficinas ──< empleados >── clientes ──< pedidos >── detalle_pedidos >── productos
                                  │                                         │
                                  └───────────── gama_productos ────────────┘
clientes ──< pagos
```

## 📝 Niveles de dificultad

| Nivel | Archivo | Conceptos |
|-------|---------|-----------|
| ⭐ | nivel1_consultas_basicas.sql | SELECT, WHERE, ORDER BY, LIMIT, IS NULL |
| ⭐⭐ | nivel2_joins.sql | INNER JOIN, LEFT JOIN, Autojoin |
| ⭐⭐⭐ | nivel3_agregacion.sql | GROUP BY, HAVING, COUNT, SUM, AVG, MAX, MIN |
| ⭐⭐⭐⭐ | nivel4_subconsultas.sql | Subconsultas, IN, EXISTS, ANY, ALL |

## ✅ Criterios de corrección

- Las consultas deben ejecutarse **sin errores de sintaxis**
- Los resultados deben incluir las **columnas indicadas en el enunciado**
- El nombre de las columnas de salida debe coincidir con el esperado (usar alias si es necesario)
- Se valorará el uso de **alias legibles** y **código bien formateado**

## 💡 Recursos

- [Documentación MySQL 8.0](https://dev.mysql.com/doc/refman/8.0/en/)
- [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)
- Apuntes del módulo en Moodle/EducamosCLM

---

> ⚠️ **Recuerda**: El trabajo debe ser individual. Puedes consultar documentación y apuntes, pero el código SQL debe ser tuyo.

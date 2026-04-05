# BASE DE DATOS I - CONCESIONARIA

![GitHub repo size](https://img.shields.io/github/repo-size/your-username/your-repo) ![License](https://img.shields.io/badge/license-MIT-blue)

## Descripción

Este proyecto forma parte del curso **Base de Datos I** y consiste en el diseño, documentación y scripts SQL para una base de datos de una **concesionaria de vehículos**. Incluye diagramas ER, diccionario de datos, user stories, y scripts para la creación de tablas, consultas y procedimientos almacenados.

El objetivo principal es modelar y gestionar la información de una concesionaria, incluyendo datos de vehículos, clientes, ventas, inventario y más, utilizando un sistema de gestión de bases de datos relacional.

Este proyecto fue desarrollado de manera **grupal**, fomentando la colaboración y el aprendizaje en equipo.

## Estructura del Proyecto

La estructura de carpetas está organizada de la siguiente manera:

- **Diagrams - Diagramas/**: Contiene los diagramas en formato PNG, incluyendo el Diagrama ER y diseños físicos/lógicos.
- **Documentation - Documentación/**: Archivos PDF con el diccionario de datos y user stories.
- **Presentation - Presentación/**: Archivo PDF con la presentación del proyecto (TPO Grupo 5).
- **SQL - Scripts SQL/**: Scripts SQL para la base de datos:
  - `CreacionDeTablas.sql`: Creación de tablas y estructura de la base de datos.
  - `Querys.sql`: Consultas SQL para extraer y manipular datos.
  - `StoreProcedures.sql`: Procedimientos almacenados para operaciones avanzadas.

## Requisitos

- Un sistema de gestión de bases de datos relacional (SGBDR) como **MySQL**, **PostgreSQL** o **SQL Server**.
- Herramientas para ejecutar scripts SQL (ej. MySQL Workbench, pgAdmin, etc.).
- Lenguaje: SQL (conocimientos básicos requeridos).

## Instalación y Ejecución

1. **Clona o descarga el repositorio**:
   ```
   git clone https://github.com/your-username/your-repo.git
   cd BASE DE DATOS I - CONCESIONARIA
   ```

2. **Configura tu SGBDR**:
   - Crea una nueva base de datos (ej. `concesionaria`).
   - Asegúrate de tener permisos para crear tablas y ejecutar scripts.

3. **Ejecuta los scripts en orden**:
   - Primero, ejecuta `SQL - Scripts SQL/CreacionDeTablas.sql` para crear las tablas y la estructura.
   - Luego, ejecuta `SQL - Scripts SQL/Querys.sql` para probar consultas.
   - Finalmente, ejecuta `SQL - Scripts SQL/StoreProcedures.sql` para los procedimientos almacenados.

   **Ejemplo con MySQL**:
   ```
   mysql -u username -p database_name < "SQL - Scripts SQL/CreacionDeTablas.sql"
   ```

4. **Verifica la ejecución**:
   - Revisa los diagramas en `Diagrams - Diagramas/` para entender la estructura.
   - Consulta la documentación en `Documentation - Documentación/` para detalles sobre los datos.


## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo LICENSE para más detalles.


- **LinkedIn**: [linkedin.com/in/thperez17](https://linkedin.com/in/thperez17)
- **Correo**: perezthomas17@hotmail.com
- **GitHub**: [github.com/thomiperezz](https://github.com/thomiperezz)
- Para preguntas, contacta al equipo del proyecto.</content>
<parameter name="filePath">c:\Users\perez\Desktop\sistema-bd-concesionaria\BASE DE DATOS I - CONCESIONARIA\README.md
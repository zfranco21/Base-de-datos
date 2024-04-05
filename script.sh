#!/bin/bash

DB_FILE="/home/franco/Documentos/base de datos/morfifast.db"

# Ruta completa de los archivos SQL
CREATE_TABLES_SQL="tablas.sql"
INSERT_DATA_SQL="querys_select.sql"

sqlite3 $DB_FILE <<EOF
-- Consultas SQL para la creación de tablas
$(cat "$CREATE_TABLES_SQL")

-- Consultas SQL para la inserción de datos
$(cat "$INSERT_DATA_SQL")

EOF

echo "Base de datos creada y datos insertados correctamente."


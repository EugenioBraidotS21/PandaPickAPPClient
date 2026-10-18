#!/usr/bin/env bash

# Crear carpeta Data y lib
mkdir -p Data lib

# Descargar driver JDBC si no existe
if [ ! -f "lib/sqlite-jdbc.jar" ]; then
  echo "Descargando driver JDBC de SQLite..."
  curl -L -o lib/sqlite-jdbc.jar https://repo1.maven.org/maven2/org/xerial/sqlite-jdbc/3.45.2.0/sqlite-jdbc-3.45.2.0.jar
fi

# Crear la base de datos dentro de Data/ si no existe
if [ ! -f "Data/pandita.db" ]; then
  sqlite3 Data/pandita.db "CREATE TABLE IF NOT EXISTS alumnos (id INTEGER PRIMARY KEY AUTOINCREMENT, nombre TEXT, padron TEXT);"
  sqlite3 Data/pandita.db "INSERT INTO alumnos (nombre, padron) VALUES ('Estudiante Modelo', '12345');"
  echo "pandita.db creada con éxito en Data/."
fi
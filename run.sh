#!/usr/bin/env bash

# Detener la ejecución inmediatamente si ocurre algún error
set -e

# 1. Asegurar que exista la carpeta bin para los binarios compilados (.class)
mkdir -p bin

# 2. Compilar todas las clases de src/ apuntando al driver en /opt/libs/
echo "Compilando proyecto Java..."
javac -cp "/opt/libs/*:src" -d bin src/*.java

# 3. Ejecutar la clase principal
echo "Ejecutando Main..."
java -cp "bin:/opt/libs/*" Main
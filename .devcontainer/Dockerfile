FROM mcr.microsoft.com/devcontainers/java:1-21-bookworm

USER root

# 1. Eliminar la lista de Yarn rota y limpiar caches previos
RUN rm -f /etc/apt/sources.list.d/yarn.list

# 2. Actualizar e instalar sqlite3, curl y certificados
RUN apt-get update && apt-get install -y --no-install-recommends \
    sqlite3 \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# 3. Descargar el driver JDBC a /opt/libs/
RUN mkdir -p /opt/libs && \
    curl -L -o /opt/libs/sqlite-jdbc.jar \
    https://repo1.maven.org/maven2/org/xerial/sqlite-jdbc/3.45.2.0/sqlite-jdbc-3.45.2.0.jar && \
    chmod 644 /opt/libs/sqlite-jdbc.jar

USER vscode

WORKDIR /workspace
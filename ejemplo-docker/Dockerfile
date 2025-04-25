# Imagen base para compilar y ejecutar un programa de lenguaje C
FROM gcc:latest

#Creamos el directorio de trabajo del contenedor
WORKDIR /app

# Coapiamos el codigo fuente el directorio de trabajo
COPY main.c .

# Compilamos la aplicacion
RUN gcc main.c -o app

# Ejecutamos la aplicacion
CMD ["./app"]

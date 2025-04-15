# Usa la imagen oficial de Nginx (ligera y optimizada para servir contenido estático)
FROM nginx:alpine

# Directorio donde Nginx sirve los archivos por defecto
WORKDIR /usr/share/nginx/html

# Elimina los archivos por defecto de Nginx
RUN rm -rf ./*

# Copia tus archivos estáticos
COPY index.html .
COPY style.css .
COPY script.js .

# Puerto que expone el contenedor (Nginx usa el 80 por defecto)
EXPOSE 80

# Nginx se inicia automáticamente al correr el contenedor
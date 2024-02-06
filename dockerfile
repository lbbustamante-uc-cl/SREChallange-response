# Usando una imagen base ligera de Nginx
FROM nginx:alpine

# Etiqueta para indicar que eres el maintainer (puedes cambiar esto)
LABEL maintainer="Luis Bustamante Palomera <lbbustamante@uc.cl>"

# Copiando archivo de contenido al directorio de trabajo en el contenedor
COPY ./index.html /usr/share/nginx/html

# Exponer el puerto 80 para que el servidor web pueda ser accesible desde fuera del contenedor
EXPOSE 80

# Comando para iniciar Nginx en primer plano al arrancar el contenedor
CMD ["nginx", "-g", "daemon off;"]

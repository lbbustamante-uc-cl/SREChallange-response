# Webserver Nginx Docker de respuesta a desafío SRE

Este repositorio contiene un Dockerfile para construir una imagen Docker con un servidor web Nginx y un archivo de index.html que contiene mi nombre en base 64.

## Instrucciones

Paso 1:

Para construir la imagen Docker, coloca este Dockerfile en un directorio y ejecuta el siguiente comando en la terminal desde ese directorio:

```bash
    docker build -t mi-webserver-nginx
```

Esto construirá la imagen utilizando el Dockerfile y la etiquetará como "mi-webserver-nginx".

Paso 2:

Luego, para ejecutar un contenedor basado en esta imagen, puedes usar el siguiente comando:

```bash
    docker run -p 8080:80 mi-webserver-nginx
```

Esto mapea el puerto 8080 de tu máquina host al puerto 80 del contenedor Nginx. Puedes cambiar los números de puerto según tus preferencias.

Paso 3: 

Después de ejecutar el contenedor, puedes acceder a tu servidor web Nginx visitando http://localhost:8080 en tu navegador, como en este ejemplo:

![Webserver](./media/webserver-access.png)

Paso 4:

Una vez visto el código, puedes decodificar el contenido por 2 vías.

a) copiando el texto y ejecutando en un terminal la sigueinte instrucción:

```bash
echo "textocifrado" | base64 -d
```

b) ejecutando en la terminal el siguiente comando:

```bash
curl -sL http://localhost | base64 -d
```

Con esto, podrás ver que el servicio contiene mi nombre.

## Revisión en Docker Hub

Esta imagen está presente en Docker Hub. Verifica su existencia siguiendo el enlace

https://hub.docker.com/...
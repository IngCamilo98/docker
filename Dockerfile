# Traemos una imgen prestablecidea de node
FROM node:12

# Copiamos todos los archivos de directorio . de nuestra imagen a la ruta dentro del contenedor /usr/rsc
COPY [".", "/usr/src/"]

# especificamos un directorio de trabajo dentro de nuestro build o lo que quiere decir cd /usr/src
WORKDIR /usr/src

# Intalasmo las dependencias de nuestro package.json de nuestro proyecto
RUN npm install

# Permitimos que el puerto 3000 sea accesible para nuestra maquina progenitora por decrilo así
EXPOSE 3000

# con CMD determinamos el comando por defecto que se va ajecutar por defecto si no lo especificamos en el docker run.
CMD ["node", "index.js"]

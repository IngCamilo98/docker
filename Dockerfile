# Traemos una imgen prestablecidea de node
FROM node:14

# copiamos solos los archivos package
COPY ["package.json","package-lock.json","/usr/src/"]

# especificamos un directorio de trabajo dentro de nuestro build o lo que quiere decir cd /usr/src
WORKDIR /usr/src

# Intalasmo las dependencias de nuestro package.json de nuestro proyecto
RUN npm install

# Copiamos todos los archivos del prograna y no duplica los archivops package.json ya que docker es muy listo y sabe que son los mismos
COPY [".","/usr/src/"]

# Permitimos que el puerto 3000 sea accesible para nuestra maquina progenitora por decrilo así
EXPOSE 3000

# con CMD determinamos el comando por defecto que se va ajecutar por defecto si no lo especificamos en el docker run.
CMD ["npx","nodemon", "index.js"]

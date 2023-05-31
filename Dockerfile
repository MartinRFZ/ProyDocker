# Establecemos la imagen base
FROM node:latest

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos los archivos de la aplicación al contenedor
COPY package*.json ./
COPY . .

# Instalamos las dependencias
RUN npm install

# Exponenos el puerto en el que se ejecuta la aplicación
EXPOSE 3000

# Ponemos comando para iniciar la aplicación
CMD [ "npm", "start" ]
# Copyright (C) PAGOS SIN FRONTERAS SAPI DE CV - Todos los Derechos Reservados
# La copia no autorizada de este archivo, por cualquier medio esta estrictamente prohibido
# Es un Obra Intelectual Propietaria y Confidencial
# Escrito por Victor Manuel Romero Rodriguez <victor.romero@fintecheando.mx>, Agosto 2024
# Lea el archivo de LICENSE.md para mas detalle.

# From Node JS ÑTS base image node
FROM node:lts-iron

#ARG BUILD_ENVIRONMENT_OPTIONS="--configuration production"

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

# Copying all the files from your file system to container file system
#COPY package.json .

# Copy other files as well
COPY . .

# Install all dependencies
RUN npm install

RUN npm run build

# Expose the port
EXPOSE 3000

# command to run when intantiate an image
CMD ["npm","start"]

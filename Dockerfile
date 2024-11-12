FROM node:lts-alpine

# instalar un simple servidor http para servir nuestro contenido estático
RUN npm install -g http-server

#crear directorio de trabajo
RUN mkdir /app 

# hacer la carpeta 'app' el directorio de trabajo actual
WORKDIR /app

# copiar 'package.json' y 'package-lock.json' (si están disponibles)
COPY package*.json ./

# Instalar solo dependencias de producción
RUN npm install

# copiar los archivos y carpetas del proyecto al directorio de trabajo actual (es decir, la carpeta 'app')
COPY . .

# construir aplicación para producción minificada
RUN npm run build

EXPOSE 8080
CMD [ "http-server", "dist" ]
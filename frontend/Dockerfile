#FROM node:lts-alpine
#
## instalar un simple servidor http para servir nuestro contenido estático
#RUN npm install -g http-server
#
##crear directorio de trabajo
#RUN mkdir /app 
#
## hacer la carpeta 'app' el directorio de trabajo actual
#WORKDIR /app
#
## copiar 'package.json' y 'package-lock.json' (si están disponibles)
#COPY package*.json ./
#
## Instalar solo dependencias de producción
#RUN npm install
#
## copiar los archivos y carpetas del proyecto al directorio de trabajo actual (es decir, la carpeta 'app')
#COPY . .
#
## construir aplicación para producción minificada
#RUN npm run build
#
#EXPOSE 8080
#CMD [ "http-server", "dist"]



# Usar una imagen de Node para la construcción  
FROM node:lts-alpine AS build  

# Crear directorio de trabajo  
WORKDIR /app  

# Copiar 'package.json' y 'package-lock.json' (si están disponibles)  
COPY package*.json ./  

# Instalar solo dependencias de producción  
RUN npm install  

# Copiar los archivos y carpetas del proyecto   
COPY . .  


ARG VITE_API_BASE_URL
ENV VITE_API_BASE_URL=$VITE_API_BASE_URL

# Construir aplicación para producción minificada  
RUN npm run build  

# Usar una imagen de Nginx para servir la aplicación  
FROM nginx:alpine  

# Copiar los archivos construidos al directorio de Nginx para servir  
COPY --from=build /app/dist /usr/share/nginx/html  

# Exponer el puerto 80  
EXPOSE 80  

# Usar el comando predeterminado de Nginx  
CMD ["nginx", "-g", "daemon off;"]
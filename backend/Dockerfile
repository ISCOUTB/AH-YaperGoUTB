# Utiliza una imagen base de Python con una versión adecuada y paquetes de desarrollo
FROM python:latest
# Establece el directorio de trabajo dentro del contenedor
RUN mkdir /backend
WORKDIR /backend

# Copia el requirements.txt y los archivos de la aplicación
COPY requirements.txt ./
COPY ./app ./

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

ARG URL_DATABASE
ENV URL_DATABASE=${URL_DATABASE}

# Exponer el puerto en el que se ejecutará la aplicación (ajusta si es necesario)
EXPOSE 8000


# Comando para ejecutar la aplicación
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
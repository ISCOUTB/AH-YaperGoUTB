FROM python:3.13-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    default-libmysqlclient-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Crear directorio de trabajo
WORKDIR /backend

# Copiar archivos de la app
COPY requirements.txt ./
COPY ./app ./app

# Instalar dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

# Variables de entorno
ARG URL_DATABASE
ENV URL_DATABASE=${URL_DATABASE}

# Para usar las importaciones desde /app sin prefijo "app."
ENV PYTHONPATH=/app

EXPOSE 8000

# Comando para ejecutar la app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
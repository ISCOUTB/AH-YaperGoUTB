from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base

from dotenv import load_dotenv
import os

# Carga las variables de entorno desde el archivo .env
load_dotenv()

# Leer la variable de entorno
DATABASE_URL = os.getenv("URL_DATABASE")

if DATABASE_URL is None:
    raise ValueError("La URL de la base de datos no está definida en las variables de entorno.")

# Accede a la variable URL_DATABASE
#url_database = os.getenv("URL_DATABASE")
print(f"BASE DE DATOS::: {DATABASE_URL}")

engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()
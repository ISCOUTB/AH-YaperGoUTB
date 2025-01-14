# AH-YaperGoUTB

![Versión](https://img.shields.io/badge/version-1.0.0-green)
![Docker](https://img.shields.io/badge/Docker-20.10-blue?logo=docker&logoColor=white)
![Vue.js](https://img.shields.io/badge/Vue.js-3-green)
![Bootstrap](https://img.shields.io/badge/Bootstrap-5.3-purple?logo=bootstrap&logoColor=white)


**Este software conecta a personas que han perdido objetos con quienes los han encontrado dentro de la Universidad Tecnológica de Bolívar, facilitando su devolución.**

---

## **Índice**

1. [Introducción](#introducción)  
2. [Características](#características)  
3. [Instalación](#instalación)  
4. [Uso](#uso)  
5. [Configuración](#configuración)  
6. [Contribuciones](#contribuciones)  
7. [Roadmap](#roadmap)  
8. [Licencia](#licencia)  
9. [Contacto](#contacto)  

---

## **Introducción**

Se desarrolló este software con el objetivo de facilitar la recuperación de objetos perdidos y fomentar un sentido de comunidad. Al crear una plataforma donde las personas puedan reportar objetos extraviados y encontrados, solucionamos el problema de la pérdida de pertenencias, que a menudo genera frustración y molestias. Este proyecto beneficia tanto a quienes han perdido objetos de valor sentimental o práctico, como a aquellos que desean realizar un buen acto al devolver lo que no les pertenece. Además, fortalece el tejido social al promover la colaboración y la honestidad entre los miembros de una comunidad de la Universidad Tecnológica de Bolívar. 

---

## **Características**

- Lista detallada de las características principales.  
  - Visualización de objetos recientemente perdidos 
  - Reportar un objeto perdido
  - Buscar objetos reportados por categorías o palabras clave

---

## **Instalación**

### Requisitos previos

- Solo se requiere Docker para poder instalar este proyecto en algún Host.  

### Pasos

```bash
# Clona el repositorio
git clone https://github.com/ISCOUTB/AH-YaperGoUTB.git

# Ve al directorio del proyecto
cd AH-YaperGoUTB

# Ejecuta este comando en la terminal
docker-compose --env-file .env.prod up --build

```

---

## **Uso**
Si quieres ejecutarlo de manera local en modo desarrollador,, estando en la carpeta del proyecto, haz lo siguiente:
 
1. Instancia el front del proyecyo.

```bash
# Ve a la carpeta frontend
cd frontend

# Instala las dependencias de node
npm install

# Ejecutar en modo desarrollo
npm run dev
```

2. Ahora dirigete a la carpeta backend y ejecuta el backend.

```bash
# Ve a la carpeta frontend
cd ..
cd backend

# Crea un entorno virtual
python -m venv mi_entorno

# Activar el entorno virtual
mi_entorno\Scripts\activate  # En Windows
source mi_entorno/bin/activate  # En Linux/macOS

# Instalar las dependencias
pip install -r requirements.txt

# Inicia el Backend
uvicorn main:app --reload
```
3. Y por Workbench o cualquier Sistema gestor de base de datos ejecuta el script **_YaperGO_bd_create_**.
---

## **Configuración**

- Variables de entorno importantes:

```env
# URL de la API
VITE_API_BASE_URL=http://localhost:8025

# URL base de datos DB
URL_DATABASE=mysql+pymysql://admin:admin1234@db:3306/DB

# Clave de la base de datos
DB_PASSWORD_ROOT=admin1234

# Clave de la base de datos
DB_PASSWORD_ADMIN=admin1234
```

---

<!-- ## **Contribuciones**

¡Las contribuciones son bienvenidas! Sigue estos pasos para contribuir:  

1. Haz un fork del repositorio.  
2. Crea una nueva rama: `git checkout -b feature/nueva-funcionalidad`.  
3. Realiza tus cambios y haz un commit: `git commit -m 'Añadir nueva funcionalidad'`.  
4. Envía un pull request.

Consulta las [guías de contribución](CONTRIBUTING.md) para más detalles. -->

---

## **Roadmap**

- **Versión actual**:  
  - Buscador de objetos por palabras clave.  
  - Indicador de estado (objeto reclamado o no reclamado).  

- **Futuras versiones**:  
  - 🛠️ En desarrollo: Formulario intuitivo de registro de objetos por parte del admin.
  - 🕒 Planeado: Integración de cámara con dispositivos móviles.

---

<!-- ## **Licencia**

Este proyecto está licenciado bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles. -->

---

## **Contacto**

- **Autores**: [Daniel Cruz](https://github.com/iCruzDaniel), [Jesús Miranda](https://github.com/jesuMiranda)
- **Correo electrónico**: sp_dicruz@hotmail.com
- **Sitio web**: [DanielCruzPortfolio](https://icruzdaniel.github.io/portfolio/)  
from fastapi import FastAPI
from starlette.responses import RedirectResponse
import models
from database import SessionLocal, engine
from starlette.middleware.cors import CORSMiddleware


#Routers
from routers.admin import router as admin_router
from routers.objects import router as objects_router
from routers.valid_user import router as valid_user_router

models.Base.metadata.create_all(bind=engine)

app = FastAPI()


# Agregar CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # El puerto de tu aplicación Vue
    allow_credentials=True,
    allow_methods=["*"],  # Permite todos los métodos HTTP (GET, POST, PUT, DELETE, etc.)
    allow_headers=["*"],  # Permite todos los encabezados
)

# Acceder a la base de datos
def get_db():
    try:
        db = SessionLocal()
        yield db
    finally:
        db.close()

#
@app.get("/")
def main():
    return RedirectResponse(url="/docs/")

app.include_router(admin_router)
app.include_router(objects_router)
app.include_router(valid_user_router)

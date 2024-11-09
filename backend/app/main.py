from fastapi import FastAPI
from starlette.responses import RedirectResponse
import models
from database import SessionLocal, engine

#Routers
from routers.admin import router as admin_router
from routers.objects import router as objects_router

models.Base.metadata.create_all(bind=engine)

app = FastAPI()

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

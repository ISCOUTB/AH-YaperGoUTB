from genericpath import exists
from fastapi import APIRouter
from fastapi.params import Depends
import models, esquemas
from database import SessionLocal
from sqlalchemy.orm import Session



router = APIRouter()

# Acceder a la base de datos
def get_db():
    try:
        db = SessionLocal()
        yield db
    finally:
        db.close()

#
@router.get('/validUser/{email}/{password}', response_model=esquemas.ValidUserAdmin)

def valid_user(email:str, password:str, db:Session=Depends(get_db)):
    #Consultamos si el resgistro existe
    valid = db.query(models.UserAdmin).filter_by(Email=email, Password=password).first()

    #Retornamos la Validacion del usuario
    respuesta = esquemas.ValidUserAdmin(Valid=True if valid is not None else False)
    return respuesta
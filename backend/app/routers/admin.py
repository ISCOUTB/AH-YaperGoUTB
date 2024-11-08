from fastapi import APIRouter
from typing import List
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
@router.get('/admin/', response_model=List[esquemas.UserAdmin])

def show_admins(db:Session=Depends(get_db)):
    admin = db.query(models.UserAdmin).all()
    return admin

#
@router.post('/admin/', response_model=esquemas.UserAdmin)

def create_admins(entrada:esquemas.UserAdmin, db:Session=Depends(get_db)):
    admin = models.UserAdmin(Name=entrada.Name, Last_Name=entrada.Last_Name, Email=entrada.Email, Number_Phone=entrada.Number_Phone)
    db.add(admin)
    db.commit()
    db.refresh(admin)
    return admin

#
@router.put('/admin/{id}', response_model=esquemas.UserAdmin)

def update_admins(id:int, entrada:esquemas.UserAdminUpdate, db:Session=Depends(get_db)):
    admin = db.query(models.UserAdmin).filter_by(Admin_ID=id).first()
    admin.Name = entrada.Name
    db.commit()
    db.refresh(admin)
    return admin

#
@router.delete('/admin/{id}', response_model=esquemas.Respuesta)

def delete_admins(id:int, db:Session=Depends(get_db)):
    admin = db.query(models.UserAdmin).filter_by(Admin_ID=id).first()
    db.delete(admin)
    db.commit()
    respuesta = esquemas.Respuesta(message="Eliminado exitosamente.")
    return respuesta
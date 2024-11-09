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
@router.get('/objects/', response_model=List[esquemas.LostObject])

def show_objects(db:Session=Depends(get_db)):
    object = db.query(models.LostObject).all()
    return object

#
@router.post('/objects/', response_model=esquemas.LostObject)

def create_objects(entrada: esquemas.LostObject, db: Session = Depends(get_db)):
    try:
        # Crea la instancia del objeto
        object = models.LostObject(
            Obj_ID=entrada.Obj_ID,
            Obj_Name=entrada.Obj_Name,
            Obj_Description=entrada.Obj_Description,
            Student_ID=entrada.Student_ID,
            Tag_ID=entrada.Tag_ID,
            Found_Date=entrada.Found_Date,
            Reclamed_Date=entrada.Reclamed_Date,
            Sector_ID=entrada.Sector_ID,
            Found_Description=entrada.Found_Description,
            Admin_ID=entrada.Admin_ID,
            URL_Img=entrada.URL_Img
        )

        # Agrega el objeto a la sesión y realiza el commit
        db.add(object)
        db.commit()
        
        # Intenta refrescar el objeto
        db.refresh(object)
        return object

    except Exception as e:
        # Imprime cualquier error para depuración
        print(f"Error al crear el objeto: {e}")
        db.rollback()
        raise e

#
@router.put('/objects/{id}', response_model=esquemas.LostObject)

def update_objects(id:int, entrada:esquemas.LostObject, db:Session=Depends(get_db)):
    object = db.query(models.LostObject).filter_by(Obj_ID=id).first()
    object.Obj_Name = entrada.Obj_Name
    db.commit()
    db.refresh(object)
    return object

#
@router.delete('/objects/{id}', response_model=esquemas.Respuesta)

def delete_objects(id:int, db:Session=Depends(get_db)):
    object = db.query(models.LostObject).filter_by(Obj_ID=id).first()
    db.delete(object)
    db.commit()
    respuesta = esquemas.Respuesta(message="Objeto Eliminado exitosamente.")
    return respuesta
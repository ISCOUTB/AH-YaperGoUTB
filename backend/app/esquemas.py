from typing import Optional
from datetime import datetime
from pydantic import BaseModel

class UserAdmin(BaseModel):
    Admin_ID: Optional[int] = None
    Name: str
    Last_Name: str
    Email: str
    Number_Phone: int
    
    class Config:
        orm_mode = True


class UserAdminUpdate(BaseModel):
    Name: str
  
    class Config:
        orm_mode = True


class Respuesta(BaseModel):
    message: str
    
    
class LostObject(BaseModel):
    Obj_ID: Optional[int] = None
    Obj_Name:str
    Obj_Description:str
    Student_ID:int
    Number_Phone:int
    Tag_ID:int
    Found_Date:Optional[datetime] = datetime.now().strftime("%Y-%m-%dT%H:%M:%S.%f")
    Reclamed_Date:Optional[datetime] = None
    Sector_ID:int
    Found_Description:str
    Admin_ID:int
    URL_Img:str
    
    class Config:
        orm_mode = True
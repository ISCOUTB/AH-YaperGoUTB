from typing import Optional
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
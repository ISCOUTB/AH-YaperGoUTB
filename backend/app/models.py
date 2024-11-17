from sqlalchemy import String, Integer, Column, DateTime
from sqlalchemy.ext.declarative import declarative_base
from database import Base

class UserAdmin(Base):
    __tablename__ = 'Admin'
    Admin_ID = Column(Integer, primary_key=True, index=True)
    Name = Column(String(50))
    Last_Name = Column(String(50))
    Email = Column(String(50))
    Password = Column(String(50))
    Number_Phone = Column(Integer)
    
class LostObject(Base):
    __tablename__ = 'Objects'
    Obj_ID = Column(Integer, primary_key=True, index=True)
    Obj_Name = Column(String(50))
    Obj_Description = Column(String(150))
    Student_ID = Column(Integer)
    Tag_ID = Column(Integer)
    Found_Date = Column(DateTime)
    Reclamed_Date = Column(DateTime)
    Sector_ID = Column(Integer)
    Found_Description = Column(String(50))
    Admin_ID = Column(Integer)
    URL_Img = Column(String(100))
    

    
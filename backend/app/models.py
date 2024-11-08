from sqlalchemy import String, Integer, Column
from database import Base

class UserAdmin(Base):
    __tablename__ = 'admin'
    Admin_ID = Column(Integer, primary_key=True, index=True)
    Name = Column(String(50))
    Last_Name = Column(String(50))
    Email = Column(String(50))
    Number_Phone = Column(Integer)
    
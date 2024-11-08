CREATE DATABASE IF NOT EXISTS DB;
USE DB;

CREATE TABLE `Sectors` (  
  `Sector_ID` INT,  
  `Sector_Name` VARCHAR(50),  
  PRIMARY KEY (`Sector_ID`)  
);  

CREATE TABLE `Admin` (  
  `Admin_ID` INT AUTO_INCREMENT,
  `Name` VARCHAR(50),  
  `Last_Name` VARCHAR(50),  
  `Email` VARCHAR(50),  
  `Number_Phone` VARCHAR(15),  -- Este tamaño para permitir códigos de país  
  PRIMARY KEY (`Admin_ID`)
);  

CREATE TABLE `Students` (  
  `Student_ID` INT AUTO_INCREMENT,  
  `Name` VARCHAR(50),  
  `Last_Name` VARCHAR(50),  
  `Email` VARCHAR(50),  
  PRIMARY KEY (`Student_ID`)  
);  

CREATE TABLE `Tag` (  
  `Tag_ID` INT AUTO_INCREMENT,  
  `Tag_Name` VARCHAR(50),  
  PRIMARY KEY (`Tag_ID`)  
);

CREATE TABLE `Objects` (  
  `Obj_ID` INT AUTO_INCREMENT,  
  `Obj_Name` VARCHAR(50),  
  `Obj_Description` VARCHAR(150), 
  `Student_ID` INT,  
  `Tag_ID` INT,  
  `Found_Date` DATETIME,  
  `Reclamed_Date` DATETIME,  
  `Sector_ID` INT,   
  `Found_Description` VARCHAR(150),  
  `Admin_ID` INT,  
  PRIMARY KEY (`Obj_ID`),  
  FOREIGN KEY (`Sector_ID`) REFERENCES `Sectors`(`Sector_ID`),  
  FOREIGN KEY (`Admin_ID`) REFERENCES `Admin`(`Admin_ID`),  
  FOREIGN KEY (`Student_ID`) REFERENCES `Students`(`Student_ID`),  
  FOREIGN KEY (`Tag_ID`) REFERENCES `Tag`(`Tag_ID`)  
);  


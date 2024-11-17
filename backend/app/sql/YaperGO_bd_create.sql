CREATE DATABASE IF NOT EXISTS DB;
USE DB;

-- CREACIÓN DE LA TABLAS
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
  `Password` VARCHAR(50),
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
  `URL_Img` VARCHAR(100),
  PRIMARY KEY (`Obj_ID`),  
  FOREIGN KEY (`Sector_ID`) REFERENCES `Sectors`(`Sector_ID`),  
  FOREIGN KEY (`Admin_ID`) REFERENCES `Admin`(`Admin_ID`),  
  FOREIGN KEY (`Student_ID`) REFERENCES `Students`(`Student_ID`),  
  FOREIGN KEY (`Tag_ID`) REFERENCES `Tag`(`Tag_ID`)  
);  


-- INSERCION DE DATOS EN TABLAS SECUNDARIAS
INSERT INTO `Admin` (`Name`, `Last_Name`, `Email`, `Password`, `Number_Phone`)
VALUES 
('Juan', 'Perez', 'juan.perez@university.edu', '12345', '+1234567890');

INSERT INTO `Sectors` (`Sector_ID`, `Sector_Name`)
VALUES
(1, 'Edificio Principal'),
(2, 'Cafetería'),
(3, 'Biblioteca'),
(4, 'Auditorio'),
(5, 'Salón de Clases B-203'),
(6, 'Gimnasio'),
(7, 'Baños del Edificio A'),
(8, 'Laboratorio'),
(9, 'Estacionamiento'),
(10, 'Sala de Estudios');

USE DB;
INSERT INTO `Students` (`Name`, `Last_Name`, `Email`)
VALUES
('Carlos', 'Gomez', 'carlos.gomez@university.edu'),
('Ana', 'Martinez', 'ana.martinez@university.edu'),
('Luis', 'Ramirez', 'luis.ramirez@university.edu'),
('Maria', 'Lopez', 'maria.lopez@university.edu'),
('Jorge', 'Hernandez', 'jorge.hernandez@university.edu'),
('Sofia', 'Diaz', 'sofia.diaz@university.edu'),
('Miguel', 'Torres', 'miguel.torres@university.edu'),
('Laura', 'Ruiz', 'laura.ruiz@university.edu'),
('David', 'Morales', 'david.morales@university.edu'),
('Sara', 'Gutierrez', 'sara.gutierrez@university.edu'),
('Andres', 'Castro', 'andres.castro@university.edu'),
('Paula', 'Vargas', 'paula.vargas@university.edu'),
('Rafael', 'Soto', 'rafael.soto@university.edu'),
('Monica', 'Reyes', 'monica.reyes@university.edu'),
('Carolina', 'Flores', 'carolina.flores@university.edu');

INSERT INTO `Tag` (`Tag_Name`)
VALUES
('Llaves'),
('Mochila'),
('Cuaderno'),
('Celular'),
('Laptop'),
('Gafas'),
('Cartera'),
('Libro'),
('Reloj'),
('Auriculares'),
('Botella'),
('Pendrive'),
('Calculadora'),
('Campera'),
('Paraguas');

-- INSERCIÓN DE OBJETOS
INSERT INTO `Objects` (`Obj_Name`, `Obj_Description`, `Student_ID`, `Tag_ID`, `Found_Date`, `Reclamed_Date`, `Sector_ID`, `Found_Description`, `Admin_ID`, `URL_Img`)
VALUES 
('Llaves', 'Un llavero con varias llaves de casa y oficina', 1, 1, '2023-01-10 10:30:00', NULL, 1, 'Encontrado en el edificio principal', 1, 'https://thumbs.dreamstime.com/z/varias-llaves-en-un-llavero-del-metal-113815579.jpg?ct=jpeg'),
('Mochila', 'Mochila negra con logo de la universidad', 2, 2, '2023-02-15 14:45:00', NULL, 2, 'Dejada en la cafetería', 1, 'https://m.media-amazon.com/images/I/71wIsz5iKtL._AC_SL1500_.jpg'),
('Cuaderno', 'Cuaderno de apuntes de matemáticas', 3, 3, '2023-03-01 09:20:00', NULL, 3, 'Hallado en la biblioteca', 1, 'https://www.ingenial.com.pe/wp-content/uploads/Cuaderno-anillado-Ingenial-Poder-3.jpg'),
('Celular', 'Teléfono móvil marca Samsung', 4, 4, '2023-03-18 16:30:00', NULL, 4, 'Recuperado en el auditorio', 1, 'https://nicaragua.tiendacelular.com/oc-content/uploads/835/1524663.jpg'),
('Laptop', 'Laptop marca Dell con funda azul', 5, 5, '2023-04-05 11:00:00', NULL, 5, 'En el salón de clases B-203', 1, 'https://http2.mlstatic.com/D_NQ_NP_998285-CBT70160160551_062023-O.webp'),
('Gafas', 'Par de gafas de lectura con estuche negro', 6, 6, '2023-04-12 13:15:00', NULL, 6, 'Encontradas en el gimnasio', 1, 'https://optik.com.co/cdn/shop/products/brook_black_w_case_2.jpg?v=1568320502'),
('Cartera', 'Cartera marrón con identificación de estudiante', 7, 7, '2023-05-02 10:00:00', NULL, 7, 'Hallada en los baños del edificio A', 1, 'https://m.media-amazon.com/images/I/910Sw4JoOqL._AC_SL1500_.jpg'),
('Libro', 'Libro de química avanzada', 8, 8, '2023-05-22 15:00:00', NULL, 8, 'Dejado en el laboratorio', 1, 'https://pictures.abebooks.com/isbn/9789681817954-es.jpg'),
('Reloj', 'Reloj de pulsera metálico', 9, 9, '2023-06-03 17:45:00', NULL, 9, 'Encontrado en el estacionamiento', 1, 'https://cdn.pixabay.com/photo/2023/06/10/22/24/wrist-watch-8054902_1280.jpg'),
('Auriculares', 'Auriculares inalámbricos', 10, 10, '2023-06-10 12:10:00', NULL, 10, 'Hallados en la sala de estudios', 1, 'https://imagedelivery.net/4fYuQyy-r8_rpBpcY7lH_A/falabellaCO/119330712_01/w=1500,h=1500,fit=pad'),
('Botella', 'Botella de agua metálica', 11, 11, '2023-07-01 09:40:00', NULL, 2, 'Olvidada en el laboratorio de computación', 1, 'https://personalizados.co/wp-content/uploads/2020/02/Botella_metalica_silver_17oz_.png'),
('Pendrive', 'Memoria USB de 32GB con llavero rojo', 12, 12, '2023-07-20 16:20:00', NULL, 3, 'Recuperado en el laboratorio de física', 1, 'https://cdn.tc.promotron.com/web-images/dd2b1148-c4b6-4ea5-a70d-9613cddc5afb'),
('Calculadora', 'Calculadora científica marca Casio', 13, 13, '2023-08-15 13:00:00', NULL, 4, 'Encontrada en la sala de examen', 1, 'https://http2.mlstatic.com/D_NQ_NP_2X_670130-MLU74976781601_032024-F.webp'),
('Campera', 'Campera azul con logo de un club', 14, 14, '2023-09-07 11:30:00', NULL, 5, 'Olvidada en el comedor', 1, 'https://i.ebayimg.com/images/g/FBoAAOSwBhhlKgE5/s-l1600.webp'),
('Paraguas', 'Paraguas negro con mango curvo', 15, 15, '2023-09-25 14:50:00', NULL, 6, 'Hallado en la entrada del edificio B', 1, 'https://img.freepik.com/fotos-premium/paraguas-negro-mango-curvo_81048-19918.jpg?w=740');

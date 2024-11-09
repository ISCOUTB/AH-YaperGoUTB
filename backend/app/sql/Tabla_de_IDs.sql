USE DB;

INSERT INTO `Admin` (`Name`, `Last_Name`, `Email`, `Number_Phone`)
VALUES 
('Juan', 'Perez', 'juan.perez@university.edu', '+1234567890');

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


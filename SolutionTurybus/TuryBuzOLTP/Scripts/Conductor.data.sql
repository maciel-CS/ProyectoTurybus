PRINT 'Populating Conductor table';
SET NOCOUNT ON;

INSERT INTO dbo.Conductor (Ci, Apellidos, Nombre, Telefono, Direccion)
VALUES 
('12345678', 'Rodriguez', 'Gabriela', '63417543', 'Calle R, Santa Cruz'),
('87654321', 'Conde', 'Maciel', '72299441', 'Calle C, Cochabamba'),
('11111111', 'Huanca', 'Ghery', '73280364', 'Avenida G, La Paz'),
('87665794', 'Garcia', 'Mario', '67654320', 'Calle X, Cochabamba'),
('78985496', 'Lopez', 'Tomas', '65444321', 'Calle L, Cochabamba'),
('78985496', 'Gomez', 'Martha', '78434527', 'Calle L, Santa Cruz'),
('87555799', 'Tohara', 'Sebastian', '60654145', 'Pasaje A, La Paz'),
('32535797', 'Nunez', 'Fernando', '69841357', 'Calle R, Cochabamba'),
('98432199', 'Cruz', 'Daniel', '70365112', 'Avenida Q, Sucre'),
('15648973', 'Calderon', 'Roberto', '60005488', 'Calle K, La Paz');
GO

PRINT 'Data inserted into Revision table';

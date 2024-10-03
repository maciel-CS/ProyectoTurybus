PRINT 'Populating Turista table';
SET NOCOUNT ON;

-- Insertar datos en la tabla Turista
INSERT INTO [dbo].[Turista] (ci, apellidos, nombre, telefono, direccion, nit)
VALUES 
('12345678', 'Pérez', 'Juan', '555-1234', 'Calle Falsa 123', '1234567890'),
('23456789', 'González', 'María', '555-5678', 'Avenida Siempre Viva 456', '2345678901'),
('34567890', 'Rodríguez', 'Carlos', '555-9876', 'Calle de la Libertad 789', '3456789012'),
('45678901', 'Fernández', 'Ana', '555-4321', 'Calle del Sol 321', '4567890123'),
('56789012', 'López', 'Marta', '555-8765', 'Avenida del Parque 654', '5678901234');

SET IDENTITY_INSERT dbo.Turista OFF;
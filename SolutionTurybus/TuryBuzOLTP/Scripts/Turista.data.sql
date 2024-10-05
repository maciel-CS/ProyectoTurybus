PRINT 'Populating Turista table';
SET NOCOUNT ON;

-- Insertar datos en la tabla Turista
INSERT INTO [dbo].[Turista] (ci, apellidos, nombre, telefono, direccion, nit)
VALUES 
('12345678', 'Pérez', 'Juan', '69080820', 'Calle Falsa 123', '1234567890'),
('23456789', 'González', 'María', '75874859', 'Avenida Siempre Viva 456', '2345678901'),
('34567890', 'Rodríguez', 'Carlos', '63258749', 'Calle de la Libertad 789', '3456789012'),
('45678901', 'Fernández', 'Ana', '68524197', 'Calle del Sol 321', '4567890123'),
('56789012', 'López', 'Marta', '78549652', 'Avenida del Parque 654', '5678901234');

SET IDENTITY_INSERT dbo.Turista OFF;

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

INSERT INTO [dbo].[Turista] (Ci, Apellidos, Nombre, Telefono, Direccion, Nit)
VALUES 
    ('1234567', 'Gutiérrez', 'Juan', '71234567', 'Av. Siempre Viva 123', '12345678901'),
    ('2345678', 'Lopez', 'Ana', '71234568', 'Calle Falsa 456', '23456789012'),
    ('3456789', 'Pérez', 'Carlos', '71234569', 'Plaza Mayor 789', '34567890123'),
    ('4567890', 'Sánchez', 'María', '71234570', 'Calle del Comercio 321', '45678901234'),
    ('5678901', 'Díaz', 'Luis', '71234571', 'Av. Libertad 654', '56789012345'),
    ('6789012', 'Martínez', 'Patricia', '71234572', 'Calle de la Paz 987', '67890123456'),
    ('7890123', 'García', 'Fernando', '71234573', 'Av. Gran Poder 135', '78901234567'),
    ('8901234', 'Cruz', 'Elena', '71234574', 'Calle Potosí 246', '89012345678'),
    ('9012345', 'Morales', 'Javier', '71234575', 'Calle Sucre 357', '90123456789'),
    ('0123456', 'Salazar', 'Lucía', '71234576', 'Av. Los Andes 468', '01234567890'),
    ('1357924', 'Hernández', 'Diego', '71234577', 'Calle Cochabamba 579', '13579246801'),
    ('2468135', 'Rivas', 'Valeria', '71234578', 'Av. El Alto 680', '24681357912'),
    ('3579246', 'Quispe', 'Andrés', '71234579', 'Calle Tarija 791', '35792468023'),
    ('4681357', 'Reyes', 'Sofia', '71234580', 'Av. Chacaltaya 802', '46813579134'),
    ('5792468', 'Vargas', 'Rafael', '71234581', 'Calle Uyuni 913', '57924680245'),
    ('6803579', 'Rojas', 'Camila', '71234582', 'Av. Santa Cruz 024', '68035791356'),
    ('7914680', 'Escobar', 'Pablo', '71234583', 'Calle Beni 135', '79146802467'),
    ('8025791', 'Flores', 'Gabriela', '71234584', 'Av. Oruro 246', '80257913578'),
    ('9136802', 'Córdova', 'Fernando', '71234585', 'Calle Pando 357', '91368024689'),
    ('0247913', 'Gómez', 'Marta', '71234586', 'Av. La Paz 468', '02479135790'),
    ('1356802', 'Acuña', 'Emilio', '71234587', 'Calle Santa Cruz 579', '13568046801');

-- Nota: El valor para la columna "rowversion" se genera automáticamente, por lo que no es necesario incluirlo en la inserción.


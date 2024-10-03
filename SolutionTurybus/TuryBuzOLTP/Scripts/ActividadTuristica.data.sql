PRINT 'Populating ActividadTuristica table';
SET NOCOUNT ON;

-- Insertar datos en la tabla ActividadTuristica
INSERT INTO [dbo].[ActividadTuristica] (Nombre, Duracion, id_RutaTuristica, id_LugarTuristico, Costo_Actividad)
VALUES
('Tour en bicicleta', '02:00:00', 1, 1, 50.00),  -- Actividad de Tour en bicicleta
('Excursión a la montaña', '03:30:00', 2, 2, 75.50),  -- Excursión a la montaña
('Visita al museo', '01:00:00', 1, 3, 20.00),  -- Visita al museo
('Paseo en barco', '01:45:00', 3, 4, 60.00),  -- Paseo en barco
('Degustación de vinos', '02:30:00', 2, 5, 85.75);  -- Degustación de vinos

SET IDENTITY_INSERT dbo.ActividadTuristica OFF;
PRINT 'Populating RutaTuristica table';
SET NOCOUNT ON;

-- Insertar datos en la tabla RutaTuristica
INSERT INTO [dbo].[RutaTuristica] (id_lugarOrigen, id_LugarDestino, TiempoParada, Costo_Transporte)
VALUES 
(1, 2, '00:30:00', 25.50),  -- Ruta de LugarOrigen 1 a LugarDestino 2
(2, 3, '01:00:00', 40.00),  -- Ruta de LugarOrigen 2 a LugarDestino 3
(3, 4, '00:45:00', 35.75),  -- Ruta de LugarOrigen 3 a LugarDestino 4
(4, 5, '00:20:00', 20.00),  -- Ruta de LugarOrigen 4 a LugarDestino 5
(1, 5, '01:30:00', 55.25);  -- Ruta de LugarOrigen 1 a LugarDestino 5


SET IDENTITY_INSERT dbo.RutaTuristica OFF;
PRINT 'Populating Servicio table';
SET NOCOUNT ON;

SET IDENTITY_INSERT servicio ON;  

INSERT INTO [dbo].[Servicio] (FechaCreacion, id_ruta, hora_salida, hora_llegada, id_conductor, id_autobus, Dias_programados)
VALUES 
('2024-10-01', 1, '08:00', '10:00', 1, 1, 'Lunes, Miércoles, Viernes'),
('2024-10-01', 2, '09:30', '11:30', 2, 1, 'Martes, Jueves, Sábado'),
('2024-10-01', 1, '14:00', '16:00', 1, 2, 'Domingo');

SET IDENTITY_INSERT servicio OFF;
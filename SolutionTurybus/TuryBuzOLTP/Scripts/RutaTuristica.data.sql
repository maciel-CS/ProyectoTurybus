PRINT 'Populating RutaTuristica table';
SET NOCOUNT ON;

-- Insertar datos en la tabla RutaTuristica
INSERT INTO [dbo].[RutaTuristica] (tiempo_viaje, id_lugarOrigen, id_lugarDestino, Costo_Transporte, tiempoParada)
VALUES 
('01:30:00', 1, 2, 50.00, '02:00:00'),  -- Ruta de Salar de Uyuni a La Paz
('02:00:00', 2, 3, 30.00, '01:30:00'),  -- Ruta de La Paz a Titicaca
('03:00:00', 2, 4, 40.00, '02:00:00'),  -- Ruta de La Paz a Potosí
('02:30:00', 2, 5, 35.00, '01:30:00'),  -- Ruta de La Paz a Sucre
('01:45:00', 5, 6, 25.00, '02:00:00'),  -- Ruta de Sucre a Tiwanaku
('04:00:00', 2, 7, 70.00, '03:00:00'),  -- Ruta de La Paz a Parque Nacional Madidi
('01:15:00', 2, 8, 20.00, '01:00:00'),  -- Ruta de La Paz a Coroico
('03:30:00', 2, 9, 60.00, '02:30:00'),  -- Ruta de La Paz a Rurrenabaque
('01:20:00', 2, 10, 15.00, '01:30:00'), -- Ruta de La Paz a Valle de la Luna
('03:00:00', 2, 11, 50.00, '02:00:00'), -- Ruta de La Paz a Santa Cruz de la Sierra
('01:45:00', 3, 12, 30.00, '02:00:00'), -- Ruta de Titicaca a Isla del Sol
('02:30:00', 2, 13, 25.00, '01:30:00'), -- Ruta de La Paz a Cochabamba
('02:15:00', 5, 14, 40.00, '02:00:00'), -- Ruta de Sucre a Parque Nacional Sajama
('02:00:00', 5, 15, 20.00, '01:30:00'), -- Ruta de Sucre a Oruro
('03:00:00', 5, 16, 50.00, '03:00:00'), -- Ruta de Sucre a Laguna Colorada
('04:00:00', 4, 17, 80.00, '02:30:00'), -- Ruta de Potosí a Torotoro
('02:30:00', 2, 18, 30.00, '01:30:00'), -- Ruta de La Paz a Yungas
('01:30:00', 1, 19, 20.00, '02:00:00'), -- Ruta de Salar de Uyuni a Samaipata
('02:45:00', 5, 20, 25.00, '01:00:00'), -- Ruta de Sucre a Sucre - Parque Cretácico
('01:50:00', 2, 21, 30.00, '02:00:00'); -- Ruta de La Paz a Chacaltaya



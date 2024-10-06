PRINT 'Populating ActividadTuristica table';
SET NOCOUNT ON;

-- Insertar datos en la tabla ActividadTuristica
INSERT INTO [dbo].[ActividadTuristica] (Nombre, Duracion, id_RutaTuristica, Costo_Actividad)
VALUES 
('Tour por el Salar de Uyuni', '03:00:00', 1, 150.00),
('City Tour en La Paz', '02:30:00', 2, 25.00),
('Excursión en bote por el Lago Titicaca', '04:00:00', 3, 80.00),
('Visita al Cerro Rico en Potosí', '05:00:00', 2, 35.00),
('Recorrido histórico en Sucre', '03:00:00',3, 20.00),
('Visita guiada a Tiwanaku', '02:00:00', 6, 45.00),
('Senderismo en el Parque Nacional Madidi', '06:00:00', 7, 100.00),
('Caminata en Coroico', '04:30:00', 8, 30.00),
('Navegación por el río Beni en Rurrenabaque', '05:00:00', 9, 90.00),
('Exploración en el Valle de la Luna', '02:00:00', 10, 15.00),
('Tour gastronómico en Santa Cruz', '03:00:00', 11, 50.00),
('Caminata por la Isla del Sol', '03:30:00', 12, 40.00),
('Escalada al Cristo de la Concordia en Cochabamba', '02:00:00', 13, 25.00),
('Excursión al Parque Nacional Sajama', '04:00:00', 14, 70.00),
('Carnaval de Oruro', '02:00:00', 15, 60.00),
('Observación de flamencos en Laguna Colorada', '03:00:00', 16, 50.00),
('Excursión a la cueva de Huellas de Dinosaurios en Torotoro', '05:00:00', 17, 35.00),
('Recorrido en bicicleta por Yungas', '04:00:00', 18, 45.00),
('Caminata cultural en Samaipata', '03:00:00', 19, 55.00),
('Visita al Parque Cretácico en Sucre', '02:00:00', 20, 20.00);



SET IDENTITY_INSERT dbo.ActividadTuristica OFF;
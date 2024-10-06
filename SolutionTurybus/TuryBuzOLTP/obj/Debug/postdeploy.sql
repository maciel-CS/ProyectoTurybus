/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					D:\Mscs\Perso\MAESTRIA\DataManagmentBussinesIntelligent\ProyectoTurybus\SolutionTurybus\TuryBuzOLTP\Scripts
--------------------------------------------------------------------------------------
*/

DELETE FROM Boleto;
GO
DBCC CHECKIDENT ('Boleto', RESEED );
GO
DELETE FROM DetalleServicio;
GO
DBCC CHECKIDENT ('DetalleServicio',RESEED);
GO
DELETE FROM ServicioAdquirido;
GO
DBCC CHECKIDENT ('ServicioAdquirido',RESEED);
GO
DELETE FROM Servicio;
GO
DBCC CHECKIDENT ('Servicio',RESEED);
GO
DELETE FROM ActividadTuristica;
GO
DBCC CHECKIDENT ('ActividadTuristica',RESEED);
GO
DELETE FROM RutaTuristica;
GO
DBCC CHECKIDENT ('RutaTuristica',RESEED);
GO
DELETE FROM LugarTuristico;
GO
DBCC CHECKIDENT ('LugarTuristico',RESEED);
GO
DELETE FROM Turista;
GO
DBCC CHECKIDENT ('Turista',RESEED);
GO
DELETE FROM Conductor;
GO
DBCC CHECKIDENT ('Conductor',RESEED);
GO
DELETE FROM Reparacion;
GO
DBCC CHECKIDENT ('Reparacion',RESEED);
GO
DELETE FROM Revision;
GO
DBCC CHECKIDENT ('Revision',RESEED);
GO
DELETE FROM Autobus;
GO
DBCC CHECKIDENT ('Autobus',RESEED);
GO






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

PRINT 'Populating Autobus table';
SET NOCOUNT ON;

-- Insertando datos en la tabla Autobus
INSERT INTO Autobus (Matricula, Numero_de_plazas, Modelo, Fabricante, Descripcion_caracteristicas)
VALUES 
('6191-FNI', 40, 'FORTE', 'ISUZU', 'BUS PREMIUM'),
('4123-ABC', 40, 'FASTER', 'ISUZU', 'Autobús moderno con asientos reclinables'),
('5789-XYZ', 50, 'TRUST', 'HITACHI', 'Autobús de dos pisos con aire acondicionado y asientos reclinables'),
('2023-POI', 36, 'ALLPATH', 'DYNA', 'Bus normal, asientos fijos'),
('3666-WER', 40, 'RODEO', 'VOLVO', 'Autobús moderno con asientos reclinables'),
('1124-FGC', 50, 'KING+', 'HYUNDAI', 'Autobús moderno con asientos reclinables'),
('2568-ERN', 40, 'QUEEN++', 'HYUNDAI', 'Autobús moderno con asientos reclinables'),
('4972-DFQ', 36, 'SOLDIER', 'KOMATSU', 'Bus normal, asientos fijos'),
('2123-VDD', 40, 'CLIMBING-UP', 'SCANIA', 'Autobús moderno con asientos reclinables'),
('3123-OPL', 50, 'ALMOST PLANE', 'CAT', 'Autobús de dos pisos con aire acondicionado y asientos reclinables');
GO

PRINT 'Data inserted into Revision table';

PRINT 'Registrando Conductores...';
SET NOCOUNT ON;

INSERT INTO dbo.Conductor (CI, Apellidos, Nombre, Telefono, Direccion)
VALUES 
('12345678', 'Rodriguez', 'Gabriela', '63417543', 'Calle R, Santa Cruz'),
('87654321', 'Conde', 'Maciel', '72299441', 'Calle C, Cochabamba'),
('11111111', 'Huanca', 'Ghery', '73280364', 'Avenida G, La Paz'),
('87665794', 'Garcia', 'Mario', '67654320', 'Calle X, Cochabamba'),
('78985496', 'Lopez', 'Tomas', '65444321', 'Calle L, Cochabamba'),
('78985494', 'Gomez', 'Martha', '78434527', 'Calle L, Santa Cruz'),
('87555799', 'Tohara', 'Sebastian', '60654145', 'Pasaje A, La Paz'),
('32535797', 'Nunez', 'Fernando', '69841357', 'Calle R, Cochabamba'),
('98432199', 'Cruz', 'Daniel', '70365112', 'Avenida Q, Sucre'),
('15648973', 'Calderon', 'Roberto', '60005488', 'Calle K, La Paz');
GO

PRINT 'Conductores registrados';

PRINT 'Populating Revision table';
SET NOCOUNT ON;

-- Insertando datos en la tabla Revision
INSERT INTO dbo.Revision (id_autobus, fecha_revision, diagnostico, costo_revision)
VALUES 

(2, '2023-06-14', 'Revisión completa del motor', 300.75),
(3, '2023-07-01', 'Cambio de llantas traseras', 200.00),
(4, '2023-04-22', 'Diagnóstico de sistema eléctrico', 120.25),
(5, '2023-08-05', 'Reemplazo de baterías', 180.50),
(6, '2023-09-18', 'Mantenimiento general', 220.80),
(7, '2023-10-01', 'Reparación del sistema de frenos', 140.00),
(8, '2023-11-11', 'Cambio de filtros de aire', 75.90),
(9, '2023-03-03', 'Revisión de transmisión', 310.20),
(10, '2023-04-12', 'Chequeo de sistema de frenos', 95.50),
(8, '2023-05-15', 'Revisión de amortiguadores', 250.10),
(7, '2023-06-25', 'Diagnóstico de fuga de aceite', 130.75),
(9, '2023-07-08', 'Mantenimiento preventivo', 185.00),
(3, '2023-08-10', 'Cambio de aceite y filtros', 110.40),
(2, '2023-09-17', 'Revisión del sistema de combustible', 160.30),
(8, '2023-10-25', 'Ajuste de frenos y correas', 190.60),
(3, '2023-11-09', 'Reparación del sistema de enfriamiento', 260.00),
(4, '2023-12-01', 'Cambio de luces delanteras', 80.75),
(4, '2023-12-25', 'Revisión de la caja de cambios',45.50),
(5, '2023-12-26', 'Revisión del sistema de refrigeración',15.99),
(6, '2023-12-26', 'Cambio de aceite y revisión de frenos',75.54),
(7, '2023-12-27', 'Revisión del sistema de calefacción en la cabina de pasajeros',78.00),
(8, '2023-12-27', 'Revisión de la caja de cambios',190.22),
(9, '2023-12-30', 'Revisión de motor y cambio de llantas',200.50),
(4, '2023-12-31', 'Revisión de la caja de cambios',160.00),
(4, '2024-01-05', 'Revisión de compresion del motor',180.00),
(5, '2024-01-10', 'Revisión de motor y cambio de llantas',485.60),
(6, '2024-01-11', 'Cambio de aceite y revisión de frenos',120.20),
(7, '2024-01-12', 'Cambio de bateria',200.00),
(5, '2024-02-14', 'Revisión del sistema de refrigeración',150.00),
(9, '2024-02-15', 'Revisión de motor y cambio de llantas',400.00),
(8, '2024-02-19', 'Revisión del sistema de Dirección',220.11),
(9, '2024-02-21', 'Revisión de motor y cambio de llantas',210.22),
(4, '2024-02-25', 'Revisión de la caja de cambios',220.88),
(5, '2024-02-26', 'Revisión del sistema de refrigeración',180.00),
(6, '2024-02-26', 'Cambio de aceite y revisión de frenos',150.55),
(7, '2024-02-27', 'Revisión del sistema de calefacción en la cabina de pasajeros',200.32),
(8, '2024-02-27', 'Revisión de la caja de cambios',45.12),
(9, '2024-02-15', 'Revisión de motor y cambio de llantas',210.55),
(4, '2024-02-18', 'Revisión de la caja de cambios',150.00),
(4, '2024-03-05', 'Revisión de compresion del motor',160.00),
(10, '2024-03-10', 'Revisión de motor y cambio de llantas',250.00),
(6, '2024-03-11', 'Cambio de aceite y revisión de frenos',170.75),
(7, '2024-03-12', 'Cambio de bateria',200.00),
(5, '2024-03-14', 'Revisión del sistema de refrigeración',120.00),
(9, '2024-03-15', 'Revisión de motor y cambio de llantas',250.50);

PRINT 'Data inserted into Revision table';

PRINT 'Añadiendo datos a la tabla Reparacion';
SET NOCOUNT ON;

-- Insertando datos en la tabla Reparacion
INSERT INTO dbo.Reparacion (id_revision, codigo_reparacion, tiempo_empleado, costo_reparacion, costo_repuestos)
VALUES 
(1, 'RPR-001', '02:30:00', 300.50, 150.25),
(2, 'RPR-002', '01:45:00', 200.75, 100.50),
(3, 'RPR-003', '03:00:00', 350.00, 180.30),
(4, 'RPR-004', '04:15:00', 500.60, 250.80),
(5, 'RPR-005', '02:00:00', 320.20, 130.00),
(6, 'RPR-006', '02:45:00', 275.50, 90.00),
(7, 'RPR-007', '01:30:00', 180.40, 75.10),
(8, 'RPR-008', '03:10:00', 410.00, 210.60),
(9, 'RPR-009', '02:20:00', 330.30, 140.45),
(10, 'RPR-010', '01:50:00', 210.90, 85.75),
(11, 'RPR-011', '02:40:00', 370.00, 160.80),
(12, 'RPR-012', '03:05:00', 450.20, 190.60),
(13, 'RPR-013', '01:35:00', 220.50, 110.40),
(14, 'RPR-014', '02:25:00', 330.70, 145.90),
(15, 'RPR-015', '04:00:00', 520.00, 250.30),
(16, 'RPR-016', '03:20:00', 390.00, 200.40),
(17, 'RPR-017', '01:55:00', 260.50, 120.10),
(18, 'RPR-018', '02:10:00', 310.70, 150.80),
(19, 'RPR-019', '03:30:00', 470.20, 220.60),
(20, 'RPR-020', '02:05:00', 270.90, 130.50),
(21, 'RPR-021', '02:50:00', 320.80, 140.00),
(22, 'RPR-022', '01:40:00', 200.40, 90.30),
(23, 'RPR-023', '03:15:00', 400.00, 170.20),
(24, 'RPR-024', '01:25:00', 190.10, 80.50),
(25, 'RPR-025', '02:35:00', 330.50, 145.80),
(26, 'RPR-026', '03:45:00', 470.00, 210.30),
(27, 'RPR-027', '01:20:00', 180.50, 75.90),
(28, 'RPR-028', '04:05:00', 510.70, 260.40),
(29, 'RPR-029', '10:55:00', 360.40, 1505.00),
(30, 'RPR-030', '03:25:00', 430.20, 190.80),
(31, 'RPR-031', '02:40:00', 370.00, 160.80),
(32, 'RPR-022', '03:05:00', 450.20, 190.60),
(33, 'RPR-033', '01:35:00', 220.50, 110.40),
(34, 'RPR-034', '02:25:00', 330.70, 145.90),
(35, 'RPR-035', '04:00:00', 520.00, 250.30),
(36, 'RPR-036', '03:20:00', 390.00, 200.40),
(37, 'RPR-037', '01:55:00', 260.50, 120.10),
(38, 'RPR-038', '02:10:00', 310.70, 150.80),
(39, 'RPR-039', '03:30:00', 470.20, 220.60),
(40, 'RPR-040', '02:05:00', 270.90, 130.50),
(41, 'RPR-041', '09:50:00', 320.80, 1480.00),
(42, 'RPR-042', '01:40:00', 200.40, 90.30);
GO

PRINT 'Data insertada dentro de Tabla Reparacion';

PRINT 'Populating LugarTuristico table';
SET NOCOUNT ON;

PRINT 'Populating LugarTuristico table';
SET NOCOUNT ON;

INSERT INTO [dbo].[LugarTuristico] (Nombre, descripcion)
VALUES 
('Salar de Uyuni', 'El salar más grande del mundo, conocido por sus paisajes deslumbrantes y reflejos en el agua durante la temporada de lluvias.'),
('La Paz', 'La sede del gobierno de Bolivia, famosa por su altitud y su vibrante cultura.'),
('Titicaca', 'El lago navegable más alto del mundo, compartido con Perú, famoso por sus islas flotantes de los Uros.'),
('Potosí', 'Una ciudad histórica famosa por su antigua riqueza minera y la montaña del Cerro Rico.'),
('Sucre', 'La capital constitucional de Bolivia, conocida por su arquitectura colonial y su historia.'),
('Tiwanaku', 'Un sitio arqueológico importante, considerado uno de los centros culturales más importantes de la civilización andina.'),
('Parque Nacional Madidi', 'Un área protegida que alberga una gran biodiversidad, con selvas tropicales y montañas.'),
('Coroico', 'Un destino popular cerca de La Paz, conocido por su clima templado y paisajes montañosos.'),
('Rurrenabaque', 'Un punto de partida para explorar la Amazonía boliviana y el Parque Nacional Madidi.'),
('Valle de la Luna', 'Una formación geológica única cerca de La Paz, con paisajes lunares y senderos para explorar.'),
('Santa Cruz de la Sierra', 'La ciudad más grande de Bolivia, conocida por su crecimiento económico y vida nocturna.'),
('Isla del Sol', 'Una hermosa isla en el lago Titicaca, rica en historia y tradiciones indígenas.'),
('Cochabamba', 'Famosa por su clima templado y la enorme estatua del Cristo de la Concordia.'),
('Parque Nacional Sajama', 'Un parque que alberga el pico más alto de Bolivia, el Sajama, y una biodiversidad única.'),
('Oruro', 'Conocida por su famoso Carnaval de Oruro, considerado Patrimonio Cultural Inmaterial de la Humanidad.'),
('Laguna Colorada', 'Una laguna salada famosa por su color rojo intenso y su vida silvestre, incluyendo flamencos.'),
('Torotoro', 'Un parque nacional conocido por sus formaciones rocosas, cuevas y huellas de dinosaurios.'),
('Yungas', 'Una región montañosa que conecta La Paz con el Amazonas, famosa por su producción de café y coca.'),
('Samaipata', 'Un pueblo tranquilo con ruinas precolombinas y bellos paisajes.'),
('Sucre - Parque Cretácico', 'Un parque temático que muestra los restos de dinosaurios en su lugar de origen.'),
('Chacaltaya', 'Un antiguo centro de esquí y montaña, famoso por su acceso a la alta montaña desde La Paz.');


GO
PRINT 'Populating RutaTuristica table';
SET NOCOUNT ON;

-- Insertar datos en la tabla RutaTuristica
INSERT INTO [dbo].[RutaTuristica] (tiempo_viaje, id_lugarOrigen, id_lugarDestino, Costo_Transporte, tiempoParada)
VALUES 
('01:30:00', 1, 2, 50.00, '02:00:00'),  -- Ruta de Salar de Uyuni a La Paz
('02:00:00', 2, 3, 30.00, '01:30:00'),  -- Ruta de La Paz a Titicaca
('03:00:00', 2, 4, 40.00, '02:00:00'),  -- Ruta de La Paz a Potos�
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
('04:00:00', 4, 17, 80.00, '02:30:00'), -- Ruta de Potos� a Torotoro
('02:30:00', 2, 18, 30.00, '01:30:00'), -- Ruta de La Paz a Yungas
('01:30:00', 1, 19, 20.00, '02:00:00'), -- Ruta de Salar de Uyuni a Samaipata
('02:45:00', 5, 20, 25.00, '01:00:00'), -- Ruta de Sucre a Sucre - Parque Cret�cico
('01:50:00', 2, 21, 30.00, '02:00:00'); -- Ruta de La Paz a Chacaltaya



PRINT 'Populating ActividadTuristica table';
SET NOCOUNT ON;

-- Insertar datos en la tabla ActividadTuristica
INSERT INTO [dbo].[ActividadTuristica] (Nombre, Duracion, id_RutaTuristica, Costo_Actividad)
VALUES 
('Tour por el Salar de Uyuni', '03:00:00', 1, 150.00),
('City Tour en La Paz', '02:30:00', 2, 25.00),
('Excursi�n en bote por el Lago Titicaca', '04:00:00', 3, 80.00),
('Visita al Cerro Rico en Potos�', '05:00:00', 2, 35.00),
('Recorrido hist�rico en Sucre', '03:00:00',3, 20.00),
('Visita guiada a Tiwanaku', '02:00:00', 6, 45.00),
('Senderismo en el Parque Nacional Madidi', '06:00:00', 7, 100.00),
('Caminata en Coroico', '04:30:00', 8, 30.00),
('Navegaci�n por el r�o Beni en Rurrenabaque', '05:00:00', 9, 90.00),
('Exploraci�n en el Valle de la Luna', '02:00:00', 10, 15.00),
('Tour gastron�mico en Santa Cruz', '03:00:00', 11, 50.00),
('Caminata por la Isla del Sol', '03:30:00', 12, 40.00),
('Escalada al Cristo de la Concordia en Cochabamba', '02:00:00', 13, 25.00),
('Excursi�n al Parque Nacional Sajama', '04:00:00', 14, 70.00),
('Carnaval de Oruro', '02:00:00', 15, 60.00),
('Observaci�n de flamencos en Laguna Colorada', '03:00:00', 16, 50.00),
('Excursi�n a la cueva de Huellas de Dinosaurios en Torotoro', '05:00:00', 17, 35.00),
('Recorrido en bicicleta por Yungas', '04:00:00', 18, 45.00),
('Caminata cultural en Samaipata', '03:00:00', 19, 55.00),
('Visita al Parque Cret�cico en Sucre', '02:00:00', 20, 20.00);



SET IDENTITY_INSERT dbo.ActividadTuristica OFF;
PRINT 'Populating Servicio table';
SET NOCOUNT ON;

INSERT INTO [dbo].[Servicio] (FechaCreacion, id_ruta, hora_salida, hora_llegada, id_conductor, id_autobus, Dias_programados)
VALUES 
('2024-10-01', 1, '08:00', '10:00', 1, 1, 'Lunes, Miércoles, Viernes'),
('2024-10-01', 2, '09:30', '11:30', 2, 1, 'Martes, Jueves, Sábado'),
('2024-10-01', 1, '14:00', '16:00', 1, 2, 'Domingo');

PRINT 'Populating [ServicioAdquirido]';
SET NOCOUNT ON;
GO
INSERT INTO [dbo].[ServicioAdquirido] (id_Servicio, id_Turista, FechaAdquirida)
VALUES 
(1, 1, '2024-01-10 10:30:00'),
(1, 2, '2024-01-15 12:00:00'),
(2, 1, '2024-02-20 14:45:00'),
(2, 2, '2024-03-05 09:15:00'),
(1, 1, '2024-04-10 11:00:00'),
(2, 1, '2024-05-18 16:30:00'),
(1, 2, '2024-06-25 08:00:00'),
(2, 2, '2024-07-14 19:00:00'),
(1, 1, '2024-08-22 15:15:00'),
(2, 2, '2024-09-30 13:45:00');
INSERT INTO [dbo].[Boleto] (id_ServicioAdquirido, FechaDeViaje, NroFactura, NroAsiento)
VALUES 
(1, '2024-01-01 08:00:00', 1001, 1),
(2, '2024-01-02 09:30:00', 1002, 2),
(3, '2024-01-03 14:00:00', 1003, 3),
(4, '2024-01-04 11:15:00', 1004, 4),
(5, '2024-01-05 16:45:00', 1005, 5),
(6, '2024-01-06 12:30:00', 1006, 6),
(7, '2024-01-07 19:00:00', 1007, 7),
(8, '2024-01-08 20:00:00', 1008, 8),
(9, '2024-01-09 21:30:00', 1009, 9),
(10, '2024-01-10 22:45:00', 1010, 10),
(1, '2024-01-11 08:00:00', 1011, 11),
(2, '2024-01-12 09:30:00', 1012, 12),
(3, '2024-01-13 14:00:00', 1013, 13),
(4, '2024-01-14 11:15:00', 1014, 14),
(5, '2024-01-15 16:45:00', 1015, 15),
(6, '2024-01-16 12:30:00', 1016, 16),
(7, '2024-01-17 19:00:00', 1017, 17),
(8, '2024-01-18 20:00:00', 1018, 18),
(9, '2024-01-19 21:30:00', 1019, 19),
(9, '2024-01-20 22:45:00', 1020, 20),
(1, '2024-01-21 08:00:00', 1021, 21),
(2, '2024-01-22 09:30:00', 1022, 22),
(3, '2024-01-23 14:00:00', 1023, 23),
(4, '2024-01-24 11:15:00', 1024, 24),
(5, '2024-01-25 16:45:00', 1025, 25),
(6, '2024-01-26 12:30:00', 1026, 26),
(7, '2024-01-27 19:00:00', 1027, 27),
(8, '2024-01-28 20:00:00', 1028, 28),
(9, '2024-01-29 21:30:00', 1029, 29),
(9, '2024-01-30 22:45:00', 1030, 30),
(1, '2024-01-31 08:00:00', 1031, 31),
(2, '2024-01-31 09:30:00', 1032, 32),
(3, '2024-01-31 14:00:00', 1033, 33),
(4, '2024-01-31 11:15:00', 1034, 34),
(5, '2024-01-31 16:45:00', 1035, 35),
(6, '2024-01-31 12:30:00', 1036, 36),
(7, '2024-01-31 19:00:00', 1037, 37),
(8, '2024-01-31 20:00:00', 1038, 38),
(9, '2024-01-31 21:30:00', 1039, 39),
(1, '2024-01-31 22:45:00', 1040, 40);
GO

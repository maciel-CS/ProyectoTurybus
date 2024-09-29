

----------------------------------------------
---------------- DATOS
----------------------------------------------

-- Datos en la tabla LugaresTuristicos

INSERT INTO LugaresTuristicos (Nombre, descripcion) VALUES
('Salar de Uyuni', 'El mayor desierto de sal del mundo, conocido por sus paisajes surrealistas.'),
('La Paz', 'Capital administrativa y cultural de Bolivia, famosa por su altitud y cultura.'),
('Tiwanaku', 'Sitio arqueológico precolombino, conocido por sus ruinas y la Puerta del Sol.'),
('Potosí', 'Ciudad histórica famosa por su rica historia minera y el Cerro Rico.'),
('Sucre', 'Capital constitucional y ciudad histórica, con arquitectura colonial bien conservada.'),
('Parque Nacional Madidi', 'Uno de los parques más biodiversos del mundo, hogar de muchas especies.'),
('Lago Titicaca', 'El lago navegable más alto del mundo, con culturas indígenas a su alrededor.'),
('Isla del Sol', 'Isla sagrada con ruinas incaicas y vistas impresionantes del Lago Titicaca.'),
('Coroico', 'Un destino turístico en las montañas, conocido por su clima templado y paisajes.'),
('Oruro', 'Conocida por su famoso carnaval y tradiciones culturales.'),
('Santa Cruz', 'Ciudad moderna y centro económico, con una vibrante vida nocturna.'),
('Tarija', 'Famosa por sus vinos y paisajes montañosos.'),
('Parque Nacional Sajama', 'Hogar del nevado Sajama, el pico más alto de Bolivia.'),
('Cañón del Río Corañahui', 'Impresionantes formaciones rocosas y paisajes naturales.'),
('Yungas', 'Región de selva con una biodiversidad impresionante y plantaciones de coca.'),
('Laguna Colorada', 'Lago salado de color rojo, famoso por su belleza natural.'),
('Pampas de Yacuma', 'Área de fauna silvestre rica, ideal para el ecoturismo.'),
('Cerro Rico de Potosí', 'Montaña icónica que representa la riqueza minera de Bolivia.'),
('Isla de la Luna', 'Isla en el Lago Titicaca, llena de mitología y tradiciones.'),
('Samaipata', 'Sitio arqueológico y ecológico con ruinas preincaicas y vistas panorámicas.'),
('Los Valles Cruceños', 'Regiones de clima templado con producción agrícola diversa.'),
('Rurrenabaque', 'Puerta de entrada a la selva amazónica y tours de ecoturismo.'),
('Salar de Chuvica', 'Un hermoso salar menos conocido, ideal para explorar.'),
('Parque Nacional Amboró', 'Conocido por su diversidad biológica y senderos naturales.'),
('Teleférico de La Paz', 'Ofrece vistas espectaculares de la ciudad y sus alrededores.'),
('Chacaltaya', 'Antiguo centro de esquí, con vistas impresionantes de la cordillera.'),
('Morro de Calatrava', 'Ofrece una vista panorámica de Sucre y su entorno.'),
('Parque Nacional Torotoro', 'Famoso por sus cañones y huellas de dinosaurios.'),
('Cataratas de San Francisco', 'Espectaculares caídas de agua en un entorno natural.'),
('Puente de la Amistad', 'Conexión entre Bolivia y Brasil, símbolo de cooperación.'),
('Valles de los Yungas', 'Regiones de paisajes verdes y cultivos diversos.'),
('Titicaca', 'Centro de cultura y tradiciones alrededor del lago, conocido por su belleza.'),
('Catedral de La Paz', 'Arquitectura colonial impresionante en el corazón de La Paz.');

-- Datos en la tabla RutasTuristicas
INSERT INTO RutasTuristicas (tiempo_viaje, id_lugar_origen, id_lugar_destino, tiempo_parada) VALUES
('03:00:00', 2, 1, '01:00:00'), -- La Paz a Salar de Uyuni
('02:30:00', 2, 3, '02:00:00'), -- La Paz a Tiwanaku
('04:00:00', 2, 4, '01:30:00'), -- La Paz a Potosí
('01:30:00', 2, 5, '02:00:00'), -- La Paz a Sucre
('05:00:00', 2, 6, '01:00:00'), -- La Paz a Parque Nacional Madidi
('02:15:00', 2, 7, '01:30:00'), -- La Paz a Lago Titicaca
('03:30:00', 2, 8, '01:00:00'), -- La Paz a Isla del Sol
('04:30:00', 2, 10, '01:30:00'), -- La Paz a Oruro
('03:45:00', 2, 12, '01:00:00'), -- La Paz a Parque Nacional Sajama
('06:00:00', 2, 13, '02:00:00'), -- La Paz a Cañón del Río Corañahui
('03:30:00', 3, 1, '01:00:00'), -- Potosí a Salar de Uyuni
('02:00:00', 3, 5, '02:00:00'), -- Potosí a Sucre
('04:00:00', 3, 6, '01:30:00'), -- Potosí a Parque Nacional Madidi
('03:15:00', 3, 4, '01:00:00'), -- Potosí a La Paz
('05:00:00', 3, 11, '01:00:00'), -- Potosí a Tarija
('02:30:00', 3, 7, '01:00:00'), -- Potosí a Lago Titicaca
('04:15:00', 3, 8, '01:00:00'), -- Potosí a Isla del Sol
('02:45:00', 3, 9, '01:30:00'), -- Potosí a Coroico
('03:00:00', 3, 10, '01:00:00'), -- Potosí a Oruro
('03:30:00', 3, 12, '01:00:00'), -- Potosí a Parque Nacional Sajama
('02:30:00', 1, 4, '02:00:00'), -- Salar de Uyuni a Potosí
('03:00:00', 1, 5, '01:30:00'), -- Salar de Uyuni a Sucre
('04:00:00', 1, 6, '01:00:00'), -- Salar de Uyuni a Parque Nacional Madidi
('05:30:00', 1, 7, '01:00:00'), -- Salar de Uyuni a Lago Titicaca
('04:15:00', 1, 11, '01:30:00'), -- Salar de Uyuni a Tarija
('06:00:00', 1, 12, '02:00:00'), -- Salar de Uyuni a Parque Nacional Sajama
('03:45:00', 1, 10, '01:30:00'), -- Salar de Uyuni a Oruro
('01:15:00', 2, 9, '01:00:00'), -- La Paz a Coroico
('03:00:00', 3, 14, '01:00:00'), -- Potosí a Yungas
('02:00:00', 3, 15, '01:00:00'); -- Potosí a Laguna Colorada

GO

-- Datos en la tabla Actividades
INSERT INTO Actividades (Nombre, Duracion, id_RutaTuristica) VALUES
('Recorrido por el Salar de Uyuni', '02:00:00', 1), 
('Visita al Mercado de Las Brujas en La Paz', '01:30:00', 2), 
('Tour arqueológico en Tiwanaku', '03:00:00', 3), 
('Exploración de las minas en Potosí', '02:30:00', 4), 
('Caminata por el centro histórico de Sucre', '02:00:00', 5), 
('Excursión al Parque Nacional Madidi', '04:00:00', 6),
('Paseo en bote por el Lago Titicaca', '03:00:00', 7), 
('Visita a la Isla del Sol', '05:00:00', 8), 
('Caminata en Coroico', '02:00:00', 9), 
('Festival de Oruro', '01:00:00', 10), 
('Cata de vinos en Tarija', '01:30:00', 11), 
('Senderismo en el Parque Nacional Sajama', '04:00:00', 12),
('Exploración del Cañón del Río Corañahui', '03:00:00', 13), 
('Recorrido por los Yungas en bicicleta', '05:00:00', 14), 
('Visita a la Laguna Colorada', '02:30:00', 15), 
('Safari en Pampas de Yacuma', '04:00:00', 16), 
('Subida al Cerro Rico', '02:00:00', 17), 
('Tour en la Isla de la Luna', '03:00:00', 18), 
('Visita a Samaipata y su fuerte preincaico', '03:00:00', 19), 
('Degustación de platos típicos en Los Valles Cruceños', '02:00:00', 20), 
('Paseo en canoa en Rurrenabaque', '03:30:00', 21); 

GO



-- Datos en la tabla Conductor
INSERT INTO Conductor (Ci, Apellidos, Nombre, Telefono, Direccion)
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
-- Datos en la tabla Autobus
INSERT INTO Autobus (Matricula, Numero_de_plazas, Modelo, Fabricante, Descripcion_caracteristicas)
VALUES 
('6191-FNI', 40, 'FORTE', 'ISUZU', 'BUS PREMIUM'),
('4123-ABC', 40, 'FASTER', 'ISUZU', 'Autobús moderno con asientos reclinables'),
('5789-XYZ', 50, 'TRUST', 'HITACHI', 'Autobús de dos pisos con aire acondicionado y asientos reclinables'),
('2023-POI', 36, 'ALLPATH', 'DYNA', 'Bus normal, asientos fijos'),
('3666-WER', 40, 'RODEO', 'VOLVO', 'Autobús moderno con asientos reclinables'),
('1124-FGC', 50, 'KING+', 'HYUNDAI', 'Autobús moderno con asientos reclinables'),
('2568-ERN', 40, 'QUEEN++', 'HYUNDAI', 'Autobús moderno con asientos reclinables'),
('4972-DFQ', 36, 'SOLDIER', 'KOMATSU', 'Bus normal, asientos fijo'),
('2123-VDD', 40, 'CLIMBING-UP', 'SCANIA', 'Autobús moderno con asientos reclinables'),
('3123-OPL', 50, 'ALMOST PLANE', 'CAT', 'Autobús de dos pisos con aire acondicionado y asientos reclinables');

GO

-- Datos en la tabla Revision
INSERT INTO Revision (id_autobus, fecha_revision, diagnostico)
VALUES 
(1, '2023-09-15', 'Cambio de aceite y revisión de frenos'),
(2, '2023-07-16', 'Revisión de motor y cambio de llantas'),
(4, '2023-10-18', 'Revisión del sistema de refrigeración'),
(1, '2024-10-17', 'Revisión de motor y cambio de llantas'),
(4, '2023-11-15', 'Revisión de compresion del motor'),
(5, '2023-11-16', 'Revisión de motor y cambio de llantas'),
(6, '2023-12-01', 'Cambio de aceite y revisión de frenos'),
(7, '2023-12-16', 'Cambio de bateria'),
(8, '2023-12-19', 'Revisión del sistema de Dirección'),
(9, '2023-12-21', 'Revisión de motor y cambio de llantas'),
(4, '2023-12-25', 'Revisión de la caja de cambios'),
(5, '2023-12-26', 'Revisión del sistema de refrigeración'),
(6, '2023-12-26', 'Cambio de aceite y revisión de frenos'),
(7, '2023-12-27', 'Revisión del sistema de calefacción en la cabina de pasajeros'),
(8, '2023-12-27', 'Revisión de la caja de cambios'),
(9, '2023-12-30', 'Revisión de motor y cambio de llantas'),
(4, '2023-12-31', 'Revisión de la caja de cambios'),
(4, '2024-01-05', 'Revisión de compresion del motor'),
(5, '2024-01-10', 'Revisión de motor y cambio de llantas'),
(6, '2024-01-11', 'Cambio de aceite y revisión de frenos'),
(7, '2024-01-12', 'Cambio de bateria'),
(5, '2024-02-14', 'Revisión del sistema de refrigeración'),
(9, '2024-02-15', 'Revisión de motor y cambio de llantas'),
(8, '2024-02-19', 'Revisión del sistema de Dirección'),
(9, '2024-02-21', 'Revisión de motor y cambio de llantas'),
(4, '2024-02-25', 'Revisión de la caja de cambios'),
(5, '2024-02-26', 'Revisión del sistema de refrigeración'),
(6, '2024-02-26', 'Cambio de aceite y revisión de frenos'),
(7, '2024-02-27', 'Revisión del sistema de calefacción en la cabina de pasajeros'),
(8, '2024-02-27', 'Revisión de la caja de cambios'),
(9, '2024-02-15', 'Revisión de motor y cambio de llantas'),
(4, '2024-02-18', 'Revisión de la caja de cambios'),
(4, '2024-03-05', 'Revisión de compresion del motor'),
(5, '2024-03-10', 'Revisión de motor y cambio de llantas'),
(6, '2024-03-11', 'Cambio de aceite y revisión de frenos'),
(7, '2024-03-12', 'Cambio de bateria'),
(5, '2024-03-14', 'Revisión del sistema de refrigeración'),
(9, '2024-03-15', 'Revisión de motor y cambio de llantas');

go

-- Datos en la tabla Reparaciones
INSERT INTO Reparaciones (id_revision, codigo_reparacion, tiempo_empleado)
VALUES 
(1, 'R001', '01:30'),
(1, 'R002', '02:15'),
(2, 'R003', '03:00'),
(2, 'R004', '01:30'),
(4, 'R005', '02:15'),
(5, 'R003', '03:00'),
(6, 'R001', '01:30'),
(7, 'R002', '02:15'),
(8, 'R007', '03:00'),
(9, 'R009', '01:30'),
(4, 'R005', '02:15'),
(7, 'R007', '03:00'),
(10, 'R010', '02:15'),
(11, 'R009', '03:00'),
(12, 'R011', '01:30'),
(14, 'R012', '02:15'),
(15, 'R013', '03:00'),
(16, 'R011', '01:30'),
(17, 'R014', '02:15'),
(18, 'R015', '03:00'),
(19, 'R016', '01:30'),
(14, 'R017', '02:15'),
(17, 'R018', '03:00'),
(25, 'R019', '01:30'),
(21, 'R020', '02:15'),
(25, 'R021', '01:30'),
(21, 'R022', '02:15'),
(21, 'R023', '02:15'),
(22, 'R024', '03:00'),
(22, 'R025', '01:30'),
(24, 'R026', '02:15'),
(15, 'R027', '03:00'),
(26, 'R028', '01:30'),
(27, 'R029', '02:15'),
(28, 'R030', '03:00'),
(29, 'R031', '01:30'),
(24, 'R032', '02:15'),
(27, 'R033', '03:00'),
(25, 'R034', '01:30'),
(21, 'R035', '02:15'),
(31, 'R036', '02:15'),
(32, 'R037', '03:00'),
(32, 'R038', '01:30'),
(34, 'R039', '02:15'),
(35, 'R040', '03:00'),
(36, 'R041', '01:30'),
(37, 'R042', '02:15'),
(38, 'R043', '03:00'),
(1, 'R044', '01:30'),
(2, 'R045', '02:15'),
(10, 'R046', '03:00'),
(38, 'R047', '01:30'),
(37, 'R048', '02:15'),
(36, 'R049', '03:00');

GO


-- Datos en la tabla Pasajero

INSERT INTO Pasajero (CI, Apellidos, Nombre, Telefono, Direccion) VALUES
('1234567', 'Gutiérrez', 'María', '71234567', 'Calle 1, La Paz'),
('2345678', 'Cáceres', 'José', '71234568', 'Av. 20 de Octubre, La Paz'),
('3456789', 'Torres', 'Lucía', '71234569', 'Calle Comercio, Santa Cruz'),
('4567890', 'Pérez', 'Carlos', '71234570', 'Calle Sucre, Cochabamba'),
('5678901', 'Martínez', 'Ana', '71234571', 'Calle 6, Sucre'),
('6789012', 'Hernández', 'Fernando', '71234572', 'Av. Ballivian, La Paz'),
('7890123', 'Ramírez', 'Patricia', '71234573', 'Calle 5, Santa Cruz'),
('8901234', 'Salazar', 'Jorge', '71234574', 'Calle Libertador, Tarija'),
('9012345', 'Mendoza', 'Isabel', '71234575', 'Calle Potosí, Oruro'),
('1234568', 'González', 'Luis', '71234576', 'Av. América, La Paz'),
('2345679', 'Quispe', 'Adriana', '71234577', 'Calle 10, El Alto'),
('3456790', 'Zambrano', 'Victor', '71234578', 'Calle Bolívar, Cochabamba'),
('4567901', 'Sánchez', 'Teresa', '71234579', 'Calle 12, Sucre'),
('5678912', 'Vargas', 'Emilio', '71234580', 'Av. Arce, La Paz'),
('6789023', 'Morales', 'Claudia', '71234581', 'Calle 3, Santa Cruz'),
('7890134', 'Cruz', 'Juan', '71234582', 'Calle 7, Potosí'),
('8901245', 'Ríos', 'Carolina', '71234583', 'Calle 8, Tarija'),
('9012356', 'Paniagua', 'Antonio', '71234584', 'Calle 4, Oruro'),
('1234569', 'López', 'Estela', '71234585', 'Av. 1ro de Mayo, La Paz'),
('2345780', 'Alvarado', 'Rafael', '71234586', 'Calle 11, Santa Cruz'),
('3456891', 'Mamani', 'Nicolás', '71234587', 'Calle 9, Cochabamba'),
('4567902', 'Guevara', 'Gloria', '71234588', 'Calle 2, Sucre'),
('5678913', 'Delgado', 'Ricardo', '71234589', 'Av. Max Paredes, La Paz'),
('6789024', 'Rivera', 'Sonia', '71234590', 'Calle 13, Santa Cruz'),
('7890135', 'Cardenas', 'Hugo', '71234591', 'Calle 14, Potosí'),
('8901246', 'Salas', 'Esteban', '71234592', 'Calle 15, Tarija'),
('9012357', 'Escobar', 'Martha', '71234593', 'Calle 16, Oruro'),
('1234570', 'Pérez', 'Javier', '71234594', 'Av. 2, El Alto'),
('2345791', 'Suárez', 'Diana', '71234595', 'Calle 17, Cochabamba'),
('3456902', 'Núñez', 'Fernando', '71234596', 'Calle 18, Sucre'),
('12345678', 'González', 'Juan', '555-0123', 'Calle Falsa 123'),
('87654321', 'Pérez', 'María', '555-4567', 'Av. Siempre Viva 742'),
('23456789', 'López', 'Carlos', '555-7890', 'Calle de la Paz 25'),
('34567890', 'Martínez', 'Lucía', '555-0987', 'Calle Los Olivos 45'),
('45678901', 'Hernández', 'Pedro', '555-1357', 'Calle Nueva 88'),
('56789012', 'Fernández', 'Ana', '555-2468', 'Calle Vieja 11'),
('67890123', 'Ramírez', 'José', '555-3579', 'Calle Principal 56'),
('78901234', 'Torres', 'Elena', '555-4680', 'Av. Libertador 14'),
('89012345', 'Vásquez', 'Fernando', '555-5791', 'Calle Independencia 90'),
('90123456', 'Cruz', 'Sofía', '555-6802', 'Calle del Sol 31'),
('11223344', 'Rojas', 'Ricardo', '555-7913', 'Calle Luna 74'),
('22334455', 'Salazar', 'Patricia', '555-8024', 'Av. de los Ríos 62'),
('33445566', 'Alvarez', 'Jorge', '555-9135', 'Calle Estrella 29'),
('44556677', 'Mendoza', 'Claudia', '555-0246', 'Calle Horizonte 78'),
('55667788', 'Bermúdez', 'Andrés', '555-1357', 'Calle Viento 47'),
('66778899', 'Ríos', 'Natalia', '555-2468', 'Calle Mar 30'),
('77889900', 'García', 'Felipe', '555-3579', 'Av. de los Ángeles 19'),
('88990011', 'Paredes', 'Laura', '555-4680', 'Calle del Arco 84'),
('99001122', 'Cordero', 'Sergio', '555-5791', 'Calle del Río 15'),
('10111213', 'Jiménez', 'Beatriz', '555-6802', 'Av. de los Sucesos 73'),
('20222324', 'Salinas', 'Diego', '555-7913', 'Calle de la Luz 36'),
('11122333', 'Quintero', 'Roberto', '555-1234', 'Calle del Bosque 3'),
('22233444', 'Ceballos', 'Isabel', '555-2345', 'Av. de la Esperanza 21'),
('33344555', 'Moreno', 'Valeria', '555-3456', 'Calle de la Montaña 65'),
('44455666', 'Pinto', 'Samuel', '555-4567', 'Calle del Océano 88'),
('55566777', 'Carmona', 'Diana', '555-5678', 'Calle del Silencio 12'),
('66677888', 'Marín', 'Ezequiel', '555-6789', 'Av. del Sol 45'),
('77788999', 'Bolaños', 'Fabiola', '555-7890', 'Calle de la Aurora 73'),
('88899000', 'Valenzuela', 'Hugo', '555-8901', 'Calle de la Alegría 37'),
('99900111', 'Reyes', 'Nicolás', '555-9012', 'Calle del Jardín 56'),
('01011222', 'Mora', 'Anaís', '555-0123', 'Av. del Tiempo 90'),
('12131415', 'Aguilar', 'César', '555-1234', 'Calle del Cielo 14'),
('13141516', 'Rivas', 'Patricio', '555-2345', 'Calle del Viento 22'),
('14151617', 'Bermúdez', 'Santiago', '555-3456', 'Calle de la Vida 33'),
('15161718', 'Núñez', 'Carla', '555-4567', 'Calle de los Pinos 57'),
('16171819', 'Díaz', 'Gustavo', '555-5678', 'Calle de la Paz 91'),
('17181920', 'Figueroa', 'Marisol', '555-6789', 'Av. de la Libertad 40'),
('18192021', 'Castillo', 'Alejandro', '555-7890', 'Calle del Sendero 78'),
('19202122', 'Serrano', 'Jessica', '555-8901', 'Calle de los Sueños 64'),
('20212223', 'Cruz', 'Fernando', '555-9012', 'Calle de la Unión 82'),
('21222324', 'Gutiérrez', 'Cristina', '555-0123', 'Calle de la Luz 15'),
('22232425', 'Vargas', 'Ernesto', '555-1234', 'Calle del Recuerdo 29');
GO

INSERT INTO Servicio (id_ruta, hora_salida, hora_llegada, id_conductor, id_autobus, importe, Dias_programados) VALUES
(1, '08:00:00', '11:00:00', 1, 1, 100.00, 'Lunes, Miércoles, Viernes'),  -- Ruta 1
(2, '09:00:00', '10:30:00', 2, 2, 50.00, 'Martes, Jueves'),             -- Ruta 2
(3, '07:30:00', '10:00:00', 3, 3, 80.00, 'Lunes, Viernes'),            -- Ruta 3
(4, '06:30:00', '09:30:00', 4, 4, 70.00, 'Sábado, Domingo'),           -- Ruta 4
(5, '10:00:00', '14:00:00', 5, 5, 120.00, 'Diario'),                    -- Ruta 5
(6, '11:00:00', '14:30:00', 6, 6, 90.00, 'Lunes a Viernes'),           -- Ruta 6
(7, '08:15:00', '11:45:00', 7, 7, 110.00, 'Sábado, Domingo'),          -- Ruta 7
(8, '09:30:00', '12:30:00', 8, 8, 60.00, 'Diario'),                    -- Ruta 8
(9, '07:00:00', '10:00:00', 9, 9, 95.00, 'Lunes, Miércoles, Viernes'), -- Ruta 9
(10, '10:30:00', '16:00:00', 10, 10, 150.00, 'Lunes a Domingo'),       -- Ruta 10
(11, '08:00:00', '11:00:00', 1, 2, 100.00, 'Lunes, Miércoles, Viernes'),  -- Ruta 1
(12, '09:00:00', '10:30:00', 2, 3, 50.00, 'Martes, Jueves'),             -- Ruta 2
(13, '07:30:00', '10:00:00', 3, 4, 80.00, 'Lunes, Viernes'),            -- Ruta 3
(14, '06:30:00', '09:30:00', 4, 5, 70.00, 'Sábado, Domingo'),           -- Ruta 4
(15, '10:00:00', '14:00:00', 5, 6, 120.00, 'Diario'),                    -- Ruta 5
(16, '11:00:00', '14:30:00', 6, 7, 90.00, 'Lunes a Viernes'),           -- Ruta 6
(17, '08:15:00', '11:45:00', 7, 8, 110.00, 'Sábado, Domingo'),          -- Ruta 7
(18, '09:30:00', '12:30:00', 8, 9, 60.00, 'Diario'),                    -- Ruta 8
(19, '07:00:00', '10:00:00', 9, 10, 95.00, 'Lunes, Miércoles, Viernes'), -- Ruta 9
(20, '10:30:00', '16:00:00', 10, 1, 150.00, 'Lunes a Domingo'),         -- Ruta 10
(21, '08:00:00', '11:00:00', 1, 2, 100.00, 'Lunes, Miércoles, Viernes'),  -- Ruta 11
(22, '09:00:00', '10:30:00', 2, 3, 50.00, 'Martes, Jueves'),             -- Ruta 12
(23, '07:30:00', '10:00:00', 3, 4, 80.00, 'Lunes, Viernes'),            -- Ruta 13
(24, '06:30:00', '09:30:00', 4, 5, 70.00, 'Sábado, Domingo'),           -- Ruta 14
(25, '10:00:00', '14:00:00', 5, 6, 120.00, 'Diario'),                    -- Ruta 15
(26, '11:00:00', '14:30:00', 6, 7, 90.00, 'Lunes a Viernes'),           -- Ruta 16
(27, '08:15:00', '11:45:00', 7, 8, 110.00, 'Sábado, Domingo'),          -- Ruta 17
(28, '09:30:00', '12:30:00', 8, 9, 60.00, 'Diario'),                    -- Ruta 18
(29, '07:00:00', '10:00:00', 9, 10, 95.00, 'Lunes, Miércoles, Viernes'), -- Ruta 19
(30, '10:30:00', '16:00:00', 10, 1, 150.00, 'Lunes a Domingo') ,        -- Ruta 20
(1, '08:00:00', '11:00:00', 1, 3, 100.00, 'Lunes, Miércoles, Viernes'),  -- Ruta 1 -- Repetimos rutas con diferentes conductores y autobuses
(2, '09:00:00', '10:30:00', 2, 4, 50.00, 'Martes, Jueves'),             -- Ruta 2
(3, '07:30:00', '10:00:00', 3, 5, 80.00, 'Lunes, Viernes'),            -- Ruta 3
(4, '06:30:00', '09:30:00', 4, 6, 70.00, 'Sábado, Domingo'),           -- Ruta 4
(5, '10:00:00', '14:00:00', 5, 7, 120.00, 'Diario'),                    -- Ruta 5
(6, '11:00:00', '14:30:00', 6, 8, 90.00, 'Lunes a Viernes');           -- Ruta 6
GO

INSERT INTO Boleto (id_servicio, id_pasajero, fecha) VALUES
(1, 1, '2024-01-01'),
(2, 2, '2024-01-01'),
(3, 3, '2024-01-02'),
(4, 4, '2024-01-02'),
(5, 5, '2024-01-03'),
(1, 6, '2024-01-03'),
(7, 7, '2024-01-04'),
(2, 8, '2024-01-04'),
(3, 9, '2024-01-05'),
(8, 10, '2024-01-05'),
(5, 11, '2024-01-06'),
(6, 12, '2024-01-06'),
(1, 13, '2024-01-07'),
(2, 14, '2024-01-07'),
(3, 15, '2024-01-08'),
(4, 16, '2024-01-08'),
(5, 17, '2024-01-09'),
(1, 18, '2024-01-09'),
(2, 19, '2024-01-10'),
(6, 20, '2024-01-10'),
(3, 21, '2024-01-11'),
(4, 22, '2024-01-11'),
(5, 23, '2024-01-12'),
(7, 24, '2024-01-12'),
(8, 25, '2024-01-13'),
(9, 26, '2024-01-13'),
(10, 27, '2024-01-14'),
(1, 28, '2024-01-14'),
(2, 29, '2024-01-15'),
(3, 30, '2024-01-15'),
(4, 1, '2024-01-16'),
(5, 2, '2024-01-16'),
(6, 3, '2024-01-17'),
(7, 4, '2024-01-17'),
(8, 5, '2024-01-18'),
(9, 6, '2024-01-18'),
(10, 7, '2024-01-19'),
(1, 8, '2024-01-19'),
(2, 9, '2024-01-20'),
(3, 10, '2024-01-20'),
(4, 11, '2024-01-21'),
(5, 12, '2024-01-21'),
(6, 13, '2024-01-22'),
(7, 14, '2024-01-22'),
(8, 15, '2024-01-23'),
(9, 16, '2024-01-23'),
(10, 17, '2024-01-24'),
(1, 18, '2024-01-24'),
(2, 19, '2024-01-25'),
(3, 20, '2024-01-25'),
(4, 21, '2024-01-26'),
(5, 22, '2024-01-26'),
(6, 23, '2024-01-27'),
(7, 24, '2024-01-27'),
(8, 25, '2024-01-28'),
(9, 26, '2024-01-28'),
(10, 27, '2024-01-29'),
(1, 28, '2024-01-29'),
(2, 29, '2024-01-30'),
(3, 30, '2024-01-30'),
(1, 1, '2024-02-01'),
(2, 2, '2024-02-01'),
(3, 3, '2024-02-02'),
(4, 4, '2024-02-02'),
(5, 5, '2024-02-03'),
(1, 6, '2024-02-03'),
(7, 7, '2024-02-04'),
(2, 8, '2024-02-04'),
(3, 9, '2024-02-05'),
(8, 10, '2024-02-05'),
(5, 11, '2024-02-06'),
(6, 12, '2024-02-06'),
(1, 13, '2024-02-07'),
(2, 14, '2024-02-07'),
(3, 15, '2024-02-08'),
(4, 16, '2024-02-08'),
(5, 17, '2024-02-09'),
(1, 18, '2024-02-09'),
(2, 19, '2024-02-10'),
(6, 20, '2024-02-10'),
(3, 21, '2024-02-11'),
(4, 22, '2024-02-11'),
(5, 23, '2024-02-12'),
(7, 24, '2024-02-12'),
(8, 25, '2024-02-13'),
(9, 26, '2024-02-13'),
(10, 27, '2024-02-14'),
(1, 28, '2024-02-14'),
(2, 29, '2024-02-15'),
(3, 30, '2024-02-15'),
(4, 1, '2024-02-16'),
(5, 2, '2024-02-16'),
(6, 3, '2024-02-17'),
(7, 4, '2024-02-17'),
(8, 5, '2024-02-18'),
(9, 6, '2024-02-18'),
(10, 7, '2024-02-19'),
(1, 8, '2024-02-19'),
(2, 9, '2024-02-20'),
(3, 10, '2024-02-20'),
(4, 11, '2024-02-21'),
(5, 12, '2024-02-21'),
(6, 13, '2024-02-22'),
(7, 14, '2024-02-22'),
(8, 15, '2024-02-23'),
(9, 16, '2024-02-23'),
(10, 17, '2024-02-24'),
(1, 18, '2024-02-24'),
(2, 19, '2024-02-25'),
(3, 20, '2024-02-25'),
(4, 21, '2024-02-26'),
(5, 22, '2024-02-26'),
(6, 23, '2024-02-27'),
(7, 24, '2024-02-27'),
(8, 25, '2024-02-28'),
(9, 26, '2024-02-28'),
(10, 27, '2024-02-29'),
(1, 28, '2024-02-29'),
(2, 29, '2024-02-29'),
(3, 30, '2024-02-29'),
(1, 1, '2024-03-01'),
(2, 2, '2024-03-01'),
(3, 3, '2024-03-02'),
(4, 4, '2024-03-02'),
(5, 5, '2024-03-03'),
(1, 6, '2024-03-03'),
(7, 7, '2024-03-04'),
(2, 8, '2024-03-04'),
(3, 9, '2024-03-05'),
(8, 10, '2024-03-05'),
(5, 11, '2024-03-06'),
(6, 12, '2024-03-06'),
(1, 13, '2024-03-07'),
(2, 14, '2024-03-07'),
(3, 15, '2024-03-08'),
(4, 16, '2024-03-08'),
(5, 17, '2024-03-09'),
(1, 18, '2024-03-09'),
(2, 19, '2024-03-10'),
(6, 20, '2024-03-10'),
(3, 21, '2024-03-11'),
(4, 22, '2024-03-11'),
(5, 23, '2024-03-12'),
(7, 24, '2024-03-12'),
(8, 25, '2024-03-13'),
(9, 26, '2024-03-13'),
(10, 27, '2024-03-14'),
(1, 28, '2024-03-14'),
(2, 29, '2024-03-15'),
(3, 30, '2024-03-15'),
(4, 1, '2024-03-16'),
(5, 2, '2024-03-16'),
(6, 3, '2024-03-17'),
(7, 4, '2024-03-17'),
(8, 5, '2024-03-18'),
(9, 6, '2024-03-18'),
(10, 7, '2024-03-19'),
(1, 8, '2024-03-19'),
(2, 9, '2024-03-20'),
(3, 10, '2024-03-20'),
(4, 11, '2024-03-21'),
(5, 12, '2024-03-21'),
(6, 13, '2024-03-22'),
(7, 14, '2024-03-22'),
(8, 15, '2024-03-23'),
(9, 16, '2024-03-23'),
(10, 17, '2024-03-24'),
(1, 18, '2024-03-24'),
(2, 19, '2024-03-25'),
(3, 20, '2024-03-25'),
(4, 21, '2024-03-26'),
(5, 22, '2024-03-26'),
(6, 23, '2024-03-27'),
(7, 24, '2024-03-27'),
(8, 25, '2024-03-28'),
(9, 26, '2024-03-28'),
(10, 27, '2024-03-29'),
(1, 28, '2024-03-29'),
(2, 29, '2024-03-30'),
(3, 30, '2024-03-30');

INSERT INTO Boleto (id_servicio, id_pasajero, fecha) VALUES
(1, 1, '2024-04-01'),
(2, 2, '2024-04-01'),
(3, 3, '2024-04-02'),
(4, 4, '2024-04-02'),
(5, 5, '2024-04-03'),
(1, 6, '2024-04-03'),
(7, 7, '2024-04-04'),
(2, 8, '2024-04-04'),
(3, 9, '2024-04-05'),
(8, 10, '2024-04-05'),
(5, 11, '2024-04-06'),
(6, 12, '2024-04-06'),
(1, 13, '2024-04-07'),
(2, 14, '2024-04-07'),
(3, 15, '2024-04-08'),
(4, 16, '2024-04-08'),
(5, 17, '2024-04-09'),
(1, 18, '2024-04-09'),
(2, 19, '2024-04-10'),
(6, 20, '2024-04-10'),
(3, 21, '2024-04-11'),
(4, 22, '2024-04-11'),
(5, 23, '2024-04-12'),
(7, 24, '2024-04-12'),
(8, 25, '2024-04-13'),
(9, 26, '2024-04-13'),
(10, 27, '2024-04-14'),
(1, 28, '2024-04-14'),
(2, 29, '2024-04-15'),
(3, 30, '2024-04-15'),
(4, 1, '2024-04-16'),
(5, 2, '2024-04-16'),
(6, 3, '2024-04-17'),
(7, 4, '2024-04-17'),
(8, 5, '2024-04-18'),
(9, 6, '2024-04-18'),
(10, 7, '2024-04-19'),
(1, 8, '2024-04-19'),
(2, 9, '2024-04-20'),
(3, 10, '2024-04-20'),
(4, 11, '2024-04-21'),
(5, 12, '2024-04-21'),
(6, 13, '2024-04-22'),
(7, 14, '2024-04-22'),
(8, 15, '2024-04-23'),
(9, 16, '2024-04-23'),
(10, 17, '2024-04-24'),
(1, 18, '2024-04-24'),
(2, 19, '2024-04-25'),
(3, 20, '2024-04-25'),
(4, 21, '2024-04-26'),
(5, 22, '2024-04-26'),
(6, 23, '2024-04-27'),
(7, 24, '2024-04-27'),
(8, 25, '2024-04-28'),
(9, 26, '2024-04-28'),
(10, 27, '2024-04-29'),
(1, 28, '2024-04-29'),
(2, 29, '2024-04-30'),
(3, 30, '2024-04-30');
Go
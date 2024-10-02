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

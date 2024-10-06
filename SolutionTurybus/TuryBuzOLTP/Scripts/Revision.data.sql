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

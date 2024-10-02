PRINT 'Populating Revision table';
SET NOCOUNT ON;

-- Insertando datos en la tabla Revision
INSERT INTO dbo.Revision (id_autobus, fecha_revision, diagnostico, costo_revision)
VALUES 
(1, '2023-05-12', 'Cambio de frenos y aceite', 150.50),
(2, '2023-06-14', 'Revisión completa del motor', 300.75),
(3, '2023-07-01', 'Cambio de llantas traseras', 200.00),
(4, '2023-04-22', 'Diagnóstico de sistema eléctrico', 120.25),
(5, '2023-08-05', 'Reemplazo de baterías', 180.50),
(6, '2023-09-18', 'Mantenimiento general', 220.80),
(7, '2023-10-01', 'Reparación del sistema de frenos', 140.00),
(8, '2023-11-11', 'Cambio de filtros de aire', 75.90),
(9, '2023-03-03', 'Revisión de transmisión', 310.20),
(10, '2023-04-12', 'Chequeo de sistema de frenos', 95.50),
(11, '2023-05-15', 'Revisión de amortiguadores', 250.10),
(12, '2023-06-25', 'Diagnóstico de fuga de aceite', 130.75),
(13, '2023-07-08', 'Mantenimiento preventivo', 185.00),
(14, '2023-08-10', 'Cambio de aceite y filtros', 110.40),
(15, '2023-09-17', 'Revisión del sistema de combustible', 160.30),
(16, '2023-10-25', 'Ajuste de frenos y correas', 190.60),
(17, '2023-11-09', 'Reparación del sistema de enfriamiento', 260.00),
(18, '2023-12-01', 'Cambio de luces delanteras', 80.75),
(19, '2023-01-15', 'Chequeo del sistema de dirección', 210.90),
(20, '2023-02-28', 'Reemplazo de bomba de agua', 300.00),
(21, '2023-03-21', 'Diagnóstico del sistema de escape', 115.50),
(22, '2023-04-15', 'Revisión completa', 350.80),
(23, '2023-05-07', 'Reemplazo de bujías', 90.10),
(24, '2023-06-19', 'Cambio de correas de distribución', 175.40),
(25, '2023-07-30', 'Revisión del sistema hidráulico', 210.70),
(26, '2023-08-22', 'Diagnóstico de la caja de cambios', 240.30),
(27, '2023-09-13', 'Ajuste de suspensión', 195.80),
(28, '2023-10-20', 'Revisión de sistema de refrigeración', 145.25),
(29, '2023-11-01', 'Reemplazo de mangueras del motor', 170.45),
(30, '2023-12-15', 'Mantenimiento del sistema eléctrico', 225.95);
GO

PRINT 'Data inserted into Revision table';

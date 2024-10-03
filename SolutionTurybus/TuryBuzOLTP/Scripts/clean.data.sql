DELETE FROM Boleto;
GO
DBCC CHECKIDENT ('Boleto', RESEED);
GO
DELETE FROM DetalleServicio;
GO
DBCC CHECKIDENT ('DetalleServicio', RESEED);
GO
DELETE FROM ServicioAdquirido;
GO
DBCC CHECKIDENT ('ServicioAdquirido', RESEED);
GO
DELETE FROM Servicio;
GO
DBCC CHECKIDENT ('Servicio', RESEED);
GO
DELETE FROM ActividadesTuristicas;
GO
DBCC CHECKIDENT ('ActividadesTuristicas', RESEED);
GO
DELETE FROM RutasTuristicas;
GO
DBCC CHECKIDENT ('RutasTuristicas', RESEED);
GO
DELETE FROM LugaresTuristicas;
GO
DBCC CHECKIDENT ('LugaresTuristicas', RESEED);
GO
DELETE FROM Turista;
GO
DBCC CHECKIDENT ('Turista', RESEED);
GO
DELETE FROM Conductor;
GO
DBCC CHECKIDENT ('Conductor', RESEED);
GO
DELETE FROM Reparaciones;
GO
DBCC CHECKIDENT ('Reparacion', RESEED);
GO
DELETE FROM Revision;
GO
DBCC CHECKIDENT ('Revision', RESEED);
GO
DELETE FROM Autobus;
GO
DBCC CHECKIDENT ('Autobus', RESEED);
GO






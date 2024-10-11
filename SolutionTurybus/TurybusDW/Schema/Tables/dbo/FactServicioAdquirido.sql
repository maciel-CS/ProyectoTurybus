CREATE TABLE FactServicioAdquirido
(
   ServicioAdquiridoSK int NOT NULL,
   ServicioAdquiridoID int NOT NULL,
   TuristaID INT NOT NULL,   
   ServicioSK INT NOT NULL,
   FechaAdquirida DATETIME NOT NULL,
   ConductorSK INT NOT NULL,
   AutobusSK INT NOT NULL,
   RutaTuristicaSK INT NOT NULL,
   ActividadTuristicaSK INT NOT NULL,
   BoletoSK INT NOT NULL,
   PrecioPaquete decimal,
   CostoServicio decimal,
   NumeroDeActividades int,
   ListadeActividades varchar(MAX)
   
);
GO



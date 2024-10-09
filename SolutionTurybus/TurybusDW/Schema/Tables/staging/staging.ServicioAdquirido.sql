CREATE TABLE [staging].[servicioAdquirido]
(
   ServivioAdquiridoID int NOT NULL,
   TuristaID INT NOT NULL,   
   ServicioSK INT NOT NULL,
   FechaAdquirida DATETIME NOT NULL,
   ConductorSK INT NOT NULL,
   AutobusSK INT NOT NULL,
   PrecioPaquete decimal,
   CostoServicio decimal,
   NumeroDeActividades int,
   ListadeActividades varchar(MAX)
);
GO
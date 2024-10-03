CREATE TABLE [dbo].[Conductor] (
    id INT PRIMARY KEY IDENTITY(1,1),
    CI VARCHAR(20) NOT NULL,
    Apellidos VARCHAR(50) NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Telefono VARCHAR(20),
    Direccion VARCHAR(100),
    rowversion TIMESTAMP NOT NULL,
    CONSTRAINT UQ_Conductor_CI UNIQUE(CI) 
);
GO


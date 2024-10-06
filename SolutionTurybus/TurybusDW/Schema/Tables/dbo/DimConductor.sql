CREATE TABLE [dbo].[DimConductor] (
    ConductorSK INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimConductor PRIMARY KEY,  -- Surrogate Key (Clave sustituta)
    ConductorID VARCHAR(20) NOT NULL,  -- Identificador de negocio
    CI VARCHAR(20) PRIMARY KEY,
    Apellidos VARCHAR(255),
    Nombre VARCHAR(255),
    Telefono VARCHAR(20),
    Direccion TEXT
);
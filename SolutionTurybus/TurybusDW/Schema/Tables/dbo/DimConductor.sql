CREATE TABLE [dbo].[DimConductor] (
    ConductorSK INT IDENTITY(1,1) NOT NULL PRIMARY KEY,             -- Surrogate Key
    ConductorID INT NOT NULL,                                  -- ID de negocio
    CI VARCHAR(20) NOT NULL,                                           -- Número de cédula de identidad (no es clave primaria)
    Apellidos VARCHAR(255),                                            -- Apellidos del conductor
    Nombre VARCHAR(255),                                               -- Nombre del conductor
    Telefono VARCHAR(20),                                              -- Número de teléfono
    Direccion VARCHAR(255)                                             -- Dirección (ajustado de TEXT a VARCHAR(255) para consistencia)
);

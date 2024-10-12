CREATE TABLE [dbo].[DimConductor] (
    ConductorSK INT IDENTITY(1,1) NOT NULL PRIMARY KEY,             -- Surrogate Key
    ConductorID INT NOT NULL,                                  -- ID de negocio
    CI VARCHAR(20) NOT NULL,                                           -- N�mero de c�dula de identidad (no es clave primaria)
    Apellidos VARCHAR(255),                                            -- Apellidos del conductor
    Nombre VARCHAR(255),                                               -- Nombre del conductor
    Telefono VARCHAR(20),                                              -- N�mero de tel�fono
    Direccion VARCHAR(255)                                             -- Direcci�n (ajustado de TEXT a VARCHAR(255) para consistencia)
);

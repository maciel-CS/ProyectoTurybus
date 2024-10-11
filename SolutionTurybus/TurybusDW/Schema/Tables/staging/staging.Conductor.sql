CREATE TABLE [staging].[Conductor] (
    ConductorSK INT,                              -- Identificador del conductor (sin clave primaria en staging)
    CI VARCHAR(20),                               -- N�mero de c�dula de identidad
    Apellidos VARCHAR(255),                       -- Apellidos del conductor
    Nombre VARCHAR(255),                          -- Nombre del conductor
    Telefono VARCHAR(20),                         -- N�mero de tel�fono
    Direccion VARCHAR(255)                        -- Direcci�n (ajustado de TEXT a VARCHAR(255) para consistencia)
);

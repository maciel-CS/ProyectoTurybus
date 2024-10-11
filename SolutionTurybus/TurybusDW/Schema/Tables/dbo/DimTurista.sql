CREATE TABLE [dbo].[DimTurista] (
    TuristaSK INT IDENTITY(1,1) NOT NULL PRIMARY KEY,              -- Surrogate Key
    TuristaID INT NOT NULL,                                           -- ID del turista (clave de negocio)
    Ci VARCHAR(50) NOT NULL,                                          -- Número de cédula de identidad
    Apellidos VARCHAR(255) NOT NULL,                                  -- Apellidos del turista
    Nombre VARCHAR(255) NOT NULL,                                     -- Nombre del turista
    NumeroTelefono VARCHAR(20),                                       -- Número de teléfono
    Direccion VARCHAR(255),                                           -- Dirección del turista
    Nit VARCHAR(20)                                                   -- Número de identificación tributaria (NIT)
);

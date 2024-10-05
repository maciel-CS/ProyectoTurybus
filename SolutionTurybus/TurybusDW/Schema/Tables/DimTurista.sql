CREATE TABLE [dbo].[DimTurista]
(
    id_turista INT IDENTITY(1,1) PRIMARY KEY,  -- Clave primaria autoincremental
    Ci VARCHAR(50) NOT NULL,                   -- Número de cédula de identidad
    Apellidos VARCHAR(255) NOT NULL,           -- Apellidos del turista
    Nombre VARCHAR(255) NOT NULL,              -- Nombre del turista
    Numero_de_Telefono VARCHAR(20) NOT NULL,   -- Número de teléfono
    Direccion VARCHAR(255) NOT NULL,           -- Dirección del turista
    Nit INT NOT NULL,                          -- Número de identificación tributaria (NIT)
    
);

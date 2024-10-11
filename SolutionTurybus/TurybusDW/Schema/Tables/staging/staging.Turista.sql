CREATE TABLE [staging].[Turista] 
(
    TuristaID INT,                                                    -- ID original del turista
    Ci VARCHAR(50),                                                   -- Número de cédula de identidad
    Apellidos VARCHAR(255),                                           -- Apellidos del turista
    Nombre VARCHAR(255),                                              -- Nombre del turista
    NumeroTelefono VARCHAR(20),                                       -- Número de teléfono
    Direccion VARCHAR(255),                                           -- Dirección del turista
    Nit VARCHAR(20)                                                   -- Número de identificación tributaria (NIT)
);
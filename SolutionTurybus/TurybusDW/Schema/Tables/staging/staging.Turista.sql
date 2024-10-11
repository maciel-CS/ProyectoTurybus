CREATE TABLE [staging].[Turista] 
(
    TuristaID INT,                                                    -- ID original del turista
    Ci VARCHAR(50),                                                   -- N�mero de c�dula de identidad
    Apellidos VARCHAR(255),                                           -- Apellidos del turista
    Nombre VARCHAR(255),                                              -- Nombre del turista
    NumeroTelefono VARCHAR(20),                                       -- N�mero de tel�fono
    Direccion VARCHAR(255),                                           -- Direcci�n del turista
    Nit VARCHAR(20)                                                   -- N�mero de identificaci�n tributaria (NIT)
);
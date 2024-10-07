CREATE TABLE [dbo].[DimTurista]
(
    TuristaSK INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimTurista PRIMARY KEY,  -- Surrogate Key (Clave sustituta)
    TuristaID INT NOT NULL,                  -- Identificador de negocio
    id_turista INT IDENTITY(1,1) PRIMARY KEY,  -- Clave primaria autoincremental
    Ci VARCHAR(50) NOT NULL,                   -- N�mero de c�dula de identidad
    Apellidos VARCHAR(255) NOT NULL,           -- Apellidos del turista
    Nombre VARCHAR(255) NOT NULL,              -- Nombre del turista
    Numero_de_Telefono VARCHAR(20) NOT NULL,   -- N�mero de tel�fono
    Direccion VARCHAR(255) NOT NULL,           -- Direcci�n del turista
    Nit INT NOT NULL                         -- N�mero de identificaci�n tributaria (NIT)
    
);

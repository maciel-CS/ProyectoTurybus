CREATE TABLE [dbo].[DimAutobus] (
    AutobusSK INT IDENTITY(1,1) NOT NULL PRIMARY KEY,              -- Surrogate Key
    AutobusID INT NOT NULL,                                           -- ID del autob�s (clave de negocio)
    Matricula VARCHAR(50) NOT NULL,                                   -- Matr�cula del autob�s
    NumeroPlazas INT NOT NULL,                                        -- N�mero de plazas
    Modelo VARCHAR(100),                                              -- Modelo del autob�s
    NumeroRevisiones INT,                                             -- N�mero de revisiones realizadas
    NumeroReparaciones INT,                                           -- N�mero de reparaciones
    CostoTotalRevisiones DECIMAL(10,2),                               -- Costo total de las revisiones
    CostoTotalReparaciones DECIMAL(10,2),                             -- Costo total de las reparaciones
    CostoTotalRepuestos DECIMAL(10,2)                                 -- Costo total de los repuestos
);

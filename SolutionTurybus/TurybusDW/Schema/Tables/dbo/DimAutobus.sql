CREATE TABLE [dbo].[DimAutobus] (
    AutobusSK INT IDENTITY(1,1) NOT NULL PRIMARY KEY,              -- Surrogate Key
    AutobusID INT NOT NULL,                                           -- ID del autobús (clave de negocio)
    Matricula VARCHAR(50) NOT NULL,                                   -- Matrícula del autobús
    NumeroPlazas INT NOT NULL,                                        -- Número de plazas
    Modelo VARCHAR(100),                                              -- Modelo del autobús
    NumeroRevisiones INT,                                             -- Número de revisiones realizadas
    NumeroReparaciones INT,                                           -- Número de reparaciones
    CostoTotalRevisiones DECIMAL(10,2),                               -- Costo total de las revisiones
    CostoTotalReparaciones DECIMAL(10,2),                             -- Costo total de las reparaciones
    CostoTotalRepuestos DECIMAL(10,2)                                 -- Costo total de los repuestos
);

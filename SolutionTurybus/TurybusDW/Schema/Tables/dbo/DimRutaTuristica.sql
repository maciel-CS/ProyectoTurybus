CREATE TABLE [dbo].[DimRutaTuristica]
(
    RutaTuristicaSK INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimRutaTuristica PRIMARY KEY,  -- Surrogate Key (Clave sustituta)
    RutaTuristicaID INT NOT NULL,              -- Identificador de negocio
    TiempoViaje TIME NOT NULL,                -- Duración del viaje
    LugarOrigenID INT NOT NULL,              -- Identificador del lugar de origen
    LugarDestinoID INT NOT NULL,             -- Identificador del lugar de destino
    CostoTransporte DECIMAL(10,2) NOT NULL,   -- Costo del transporte
    TiempoParada TIME NOT NULL                -- Duración de la parada)
);
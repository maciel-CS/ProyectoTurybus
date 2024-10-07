CREATE TABLE [dbo].[DimRutaTuristica]
(
    RutaTuristicaSK INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimRutaTuristica PRIMARY KEY,  -- Surrogate Key (Clave sustituta)
    RutaTuristicaID INT NOT NULL,              -- Identificador de negocio
    tiempo_viaje TIME NOT NULL,                -- Duración del viaje
    id_lugar_origen INT NOT NULL,              -- Identificador del lugar de origen
    id_lugar_destino INT NOT NULL,             -- Identificador del lugar de destino
    Costo_Transporte DECIMAL(10,2) NOT NULL,   -- Costo del transporte
    tiempo_parada TIME NOT NULL                -- Duración de la parada
);

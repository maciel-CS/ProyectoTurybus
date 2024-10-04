CREATE TABLE [dbo].[DimRutaTuristica]
(
    id INT IDENTITY(1,1) PRIMARY KEY,          -- Clave primaria autoincremental
    tiempo_viaje TIME NOT NULL,                -- Duración del viaje
    id_lugar_origen INT NOT NULL,              -- Identificador del lugar de origen
    id_lugar_destino INT NOT NULL,             -- Identificador del lugar de destino
    Costo_Transporte DECIMAL(10,2) NOT NULL,   -- Costo del transporte
    tiempo_parada TIME NOT NULL                -- Duración de la parada
);

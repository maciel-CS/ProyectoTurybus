CREATE TABLE [staging].[RutaTuristica] 
(
    RutaTuristicaSK INT,                      -- Identificador del registro (sin clave primaria en staging)
    TiempoViaje TIME,                         -- Duración del viaje (ajustado a camelCase)
    LugarOrigenID INT,                        -- Identificador del lugar de origen (ajustado nombre a camelCase)
    LugarDestinoID INT,                       -- Identificador del lugar de destino (ajustado nombre a camelCase)
    CostoTransporte DECIMAL(10,2),            -- Costo del transporte (ajustado nombre a camelCase)
    TiempoParada TIME                         -- Duración de la parada (ajustado nombre a camelCase)
);
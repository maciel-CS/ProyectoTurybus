CREATE TABLE [Staging].[RutaTuristica]
(
    id INT,                               -- Identificador del registro (sin clave primaria en staging)
    tiempo_viaje TIME,                    -- Duración del viaje
    id_lugar_origen INT,                  -- Identificador del lugar de origen
    id_lugar_destino INT,                 -- Identificador del lugar de destino
    Costo_Transporte DECIMAL(10,2),       -- Costo del transporte
    tiempo_parada TIME                    -- Duración de la parada
);

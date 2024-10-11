CREATE TABLE [staging].[Servicio] (
    ServicioSK INT,                                              -- ID de la ruta turística
    FechaCreacion DATE,                                                       -- Fecha del servicio
    HoraSalida TIME,                                                  -- Hora de salida
    HoraLlegada TIME,                                                 -- Hora de llegada
    DiasProgramados VARCHAR(MAX)                                      -- Días programados para el servicio
);
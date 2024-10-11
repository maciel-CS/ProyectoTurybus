CREATE TABLE [staging].[Servicio] (
    ServicioSK INT,                                              -- ID de la ruta tur�stica
    FechaCreacion DATE,                                                       -- Fecha del servicio
    HoraSalida TIME,                                                  -- Hora de salida
    HoraLlegada TIME,                                                 -- Hora de llegada
    DiasProgramados VARCHAR(MAX)                                      -- D�as programados para el servicio
);
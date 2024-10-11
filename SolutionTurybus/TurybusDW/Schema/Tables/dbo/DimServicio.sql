CREATE TABLE [dbo].[DimServicio] (
    ServicioSK INT IDENTITY(1,1) NOT NULL PRIMARY KEY,             -- Surrogate Key
    ServicioID INT NOT NULL,                                          -- ID del servicio (clave de negocio)
    FechaCreacion DATETIME NOT NULL,                                  -- Fecha de creación del servicio
    RutaTuristicaSK INT,                                              -- Clave foránea de la tabla DimRutaTuristica
    HoraSalida TIME NOT NULL,                                         -- Hora de salida
    HoraLlegada TIME NOT NULL,                                        -- Hora de llegada
    ConductorSK INT,                                                  -- Clave foránea de la tabla DimConductor
    AutobusSK INT,                                                    -- Clave foránea de la tabla DimAutobus
    DiasProgramados VARCHAR(100)                                      -- Días programados para el servicio
);
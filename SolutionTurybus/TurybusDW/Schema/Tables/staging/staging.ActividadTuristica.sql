CREATE TABLE [staging].[ActividadTuristica] (
    ActividadTuristicaSK INT,                                         -- ID original de la actividad turística
    Nombre VARCHAR(100),                                              -- Nombre de la actividad turística
    Duracion TIME,                                                    -- Duración de la actividad
    RutaTuristicaID INT,                                              -- ID de la ruta turística relacionada
    CostoActividad DECIMAL(10,2)                                      -- Costo de la actividad turística
);
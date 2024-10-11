CREATE TABLE [staging].[ActividadTuristica] (
    ActividadTuristicaSK INT,                                         -- ID original de la actividad tur�stica
    Nombre VARCHAR(100),                                              -- Nombre de la actividad tur�stica
    Duracion TIME,                                                    -- Duraci�n de la actividad
    RutaTuristicaID INT,                                              -- ID de la ruta tur�stica relacionada
    CostoActividad DECIMAL(10,2)                                      -- Costo de la actividad tur�stica
);
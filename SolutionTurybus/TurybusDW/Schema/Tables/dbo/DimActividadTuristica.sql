CREATE TABLE [dbo].[DimActividadTuristica] (
    ActividadTuristicaSK INT IDENTITY(1,1) NOT NULL PRIMARY KEY,   -- Surrogate Key
    ActividadTuristicaID INT NOT NULL,                                -- ID de la actividad tur�stica (clave de negocio)
    Nombre VARCHAR(100) NOT NULL,                                     -- Nombre de la actividad tur�stica
    Duracion TIME NOT NULL,                                           -- Duraci�n de la actividad
    RutaTuristicaID INT,                                              -- Clave for�nea de la tabla DimRutaTuristica
    CostoActividad DECIMAL(10,2) NOT NULL                             -- Costo de la actividad tur�stica
);

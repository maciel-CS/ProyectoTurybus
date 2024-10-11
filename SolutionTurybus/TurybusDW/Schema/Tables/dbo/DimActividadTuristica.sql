CREATE TABLE [dbo].[DimActividadTuristica] (
    ActividadTuristicaSK INT IDENTITY(1,1) NOT NULL PRIMARY KEY,   -- Surrogate Key
    ActividadTuristicaID INT NOT NULL,                                -- ID de la actividad turística (clave de negocio)
    Nombre VARCHAR(100) NOT NULL,                                     -- Nombre de la actividad turística
    Duracion TIME NOT NULL,                                           -- Duración de la actividad
    RutaTuristicaID INT,                                              -- Clave foránea de la tabla DimRutaTuristica
    CostoActividad DECIMAL(10,2) NOT NULL                             -- Costo de la actividad turística
);

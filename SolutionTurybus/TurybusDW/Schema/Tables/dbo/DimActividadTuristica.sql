CREATE TABLE [dbo].[DimActividadTuristica]
(
    ActividadTuristicaSK INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimActividadTuristica PRIMARY KEY,  -- Surrogate Key (Clave sustituta)
    ActividadTuristicaID INT NOT NULL,        -- Clave primaria autoincremental
    Nombre VARCHAR(100) NOT NULL,             -- Nombre de la actividad tur�stica
    Duracion TIME NOT NULL,                   -- Duraci�n de la actividad
    id_RutaTuristica INT NOT NULL,            -- Referencia a la ruta tur�stica (puede ser clave for�nea si tienes una tabla de rutas)
    Costo_Actividad DECIMAL(10,2) NOT NULL,   -- Costo de la actividad tur�stica
                      
);

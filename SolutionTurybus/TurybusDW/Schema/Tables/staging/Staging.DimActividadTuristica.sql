CREATE TABLE [Staging].[ActividadTuristica]
(
    id INT,                                  -- Identificador de la actividad (sin clave primaria en staging)
    Nombre VARCHAR(100),                     -- Nombre de la actividad tur�stica
    Duracion TIME,                           -- Duraci�n de la actividad
    id_RutaTuristica INT,                    -- Referencia a la ruta tur�stica
    Costo_Actividad DECIMAL(10,2)            -- Costo de la actividad tur�stica
);

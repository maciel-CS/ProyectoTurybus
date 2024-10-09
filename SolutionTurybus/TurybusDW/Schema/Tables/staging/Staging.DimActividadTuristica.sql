CREATE TABLE [Staging].[ActividadTuristica]
(
    id INT,                                  -- Identificador de la actividad (sin clave primaria en staging)
    Nombre VARCHAR(100),                     -- Nombre de la actividad turística
    Duracion TIME,                           -- Duración de la actividad
    id_RutaTuristica INT,                    -- Referencia a la ruta turística
    Costo_Actividad DECIMAL(10,2)            -- Costo de la actividad turística
);

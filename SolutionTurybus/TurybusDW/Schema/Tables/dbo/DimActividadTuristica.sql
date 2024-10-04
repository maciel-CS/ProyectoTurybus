CREATE TABLE [dbo].[DimActividadTuristica]
(
    id INT IDENTITY(1,1) PRIMARY KEY,         -- Clave primaria autoincremental
    Nombre VARCHAR(100) NOT NULL,             -- Nombre de la actividad turística
    Duracion TIME NOT NULL,                   -- Duración de la actividad
    id_RutaTuristica INT NOT NULL,            -- Referencia a la ruta turística (puede ser clave foránea si tienes una tabla de rutas)
    Costo_Actividad DECIMAL(10,2) NOT NULL,   -- Costo de la actividad turística
                      
);

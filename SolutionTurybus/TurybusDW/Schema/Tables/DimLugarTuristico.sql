CREATE TABLE [dbo].[DimLugarTuristico]
(
    id INT IDENTITY(1,1) PRIMARY KEY,        -- Clave primaria autoincremental
    Nombre VARCHAR(200) NOT NULL,            -- Nombre del lugar turístico
    Descripcion VARCHAR(MAX) NOT NULL,       -- Descripción del lugar turístico
    numero_visitas INT NOT NULL,             -- Cantidad de visitas o reservas
    fecha_visita DATE NOT NULL,              -- Fecha de la visita o evento
    
);

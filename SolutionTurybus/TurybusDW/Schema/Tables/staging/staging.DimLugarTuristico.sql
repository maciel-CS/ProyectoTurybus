CREATE TABLE [Staging].[DimLugarTuristico]
(
    id INT,                               -- El ID original del lugar turístico
    Nombre VARCHAR(200),                  -- Nombre del lugar turístico
    Descripcion VARCHAR(MAX),             -- Descripción del lugar turístico
    numero_visitas INT,                   -- Cantidad de visitas o reservas
    fecha_visita DATE,                    -- Fecha de la visita o evento
    
);

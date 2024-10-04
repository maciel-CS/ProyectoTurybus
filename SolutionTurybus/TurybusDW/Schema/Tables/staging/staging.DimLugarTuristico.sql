CREATE TABLE [Staging].[DimLugarTuristico]
(
    id INT,                               -- El ID original del lugar tur�stico
    Nombre VARCHAR(200),                  -- Nombre del lugar tur�stico
    Descripcion VARCHAR(MAX),             -- Descripci�n del lugar tur�stico
    numero_visitas INT,                   -- Cantidad de visitas o reservas
    fecha_visita DATE,                    -- Fecha de la visita o evento
    
);

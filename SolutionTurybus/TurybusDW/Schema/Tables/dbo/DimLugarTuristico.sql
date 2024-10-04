CREATE TABLE [dbo].[DimLugarTuristico]
(
    id INT IDENTITY(1,1) PRIMARY KEY,        -- Clave primaria autoincremental
    Nombre VARCHAR(200) NOT NULL,            -- Nombre del lugar tur�stico
    Descripcion VARCHAR(MAX) NOT NULL,       -- Descripci�n del lugar tur�stico
    numero_visitas INT NOT NULL,             -- Cantidad de visitas o reservas
    fecha_visita DATE NOT NULL,              -- Fecha de la visita o evento
    
);

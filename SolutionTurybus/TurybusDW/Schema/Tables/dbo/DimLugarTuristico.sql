CREATE TABLE [dbo].[DimLugarTuristico]
(
    LugarTuristicoSK INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimLugarTuristico PRIMARY KEY,  -- Surrogate Key (Clave sustituta)
    LugarTuristicoID INT NOT NULL,           -- Identificador de negocio 
    Nombre VARCHAR(200) NOT NULL,            -- Nombre del lugar turístico
    Descripcion VARCHAR(MAX) NOT NULL,       -- Descripción del lugar turístico
    numero_visitas INT NOT NULL,             -- Cantidad de visitas o reservas
    fecha_visita DATE NOT NULL              -- Fecha de la visita o evento
    
);

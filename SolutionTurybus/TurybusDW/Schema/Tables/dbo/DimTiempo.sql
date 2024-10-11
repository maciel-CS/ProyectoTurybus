CREATE TABLE [dbo].[DimTiempo] (
    --TiempoSK INT PRIMARY KEY IDENTITY(1,1),   -- Surrogate Key
    TiempoID INT NOT NULL,
    full_fecha DATE NOT NULL,                 -- Fecha completa
    dia_numero_semana INT NOT NULL,           -- D�a de la semana (1-7)
    nombre_dia VARCHAR(20) NOT NULL,          -- Nombre del d�a (Lunes, Martes, etc.)
    numero_dia_mes INT NOT NULL,              -- D�a del mes (1-31)
    numero_dia_anio INT NOT NULL,             -- D�a del a�o (1-365)
    semana_numero_anio INT NOT NULL,          -- Semana del a�o
    mes INT NOT NULL,                         -- Mes (1-12)
    nombre_mes VARCHAR(20) NOT NULL,          -- Nombre del mes (Enero, Febrero, etc.)
    trimestre INT NOT NULL,                   -- Trimestre (1-4)
    anio INT NOT NULL,                        -- A�o
    es_fin_de_semana BIT NOT NULL,            -- Indicador de fin de semana
    es_feriado BIT NOT NULL                   -- Indicador de si es un d�a feriado
);
GO

IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[DimTiempo]
			  WHERE [TiempoID] = 0)
BEGIN

INSERT INTO [dbo].[DimTiempo] (
    TiempoID,
    full_fecha,
    dia_numero_semana,
    nombre_dia,
    numero_dia_mes,
    numero_dia_anio,
    semana_numero_anio,
    mes,
    nombre_mes,
    trimestre,
    anio,
    es_fin_de_semana,
    es_feriado
) VALUES (
    0,                     -- TiempoID (puedes establecer un valor específico o dejar que sea autogenerado si es necesario)
    '1900-01-01',        -- full_fecha (una fecha válida)
    0,                    -- dia_numero_semana
    'N/A',                -- nombre_dia (puedes usar un valor predeterminado)
    0,                    -- numero_dia_mes
    0,                    -- numero_dia_anio
    0,                    -- semana_numero_anio
    0,                    -- mes
    'N/A',                -- nombre_mes
    0,                    -- trimestre
    0,                    -- anio
    0,                    -- es_fin_de_semana
    0                     -- es_feriado
);

    
END
GO
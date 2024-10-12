IF NOT EXISTS(SELECT TOP(1) 1 FROM [dbo].[DimTiempo])
BEGIN
    BEGIN TRAN 

    DECLARE @startdate DATE = '2016-01-01',
            @enddate   DATE = '2025-01-01';
    DECLARE @datelist TABLE(Full_Fecha DATE);

    IF @startdate IS NULL
    BEGIN
        SELECT TOP 1 
               @startdate = Full_Fecha
        FROM dbo.DimTiempo
        ORDER BY Full_Fecha ASC;
    END

    WHILE (@startdate <= @enddate)
    BEGIN 
        INSERT INTO @datelist(Full_Fecha)
        SELECT @startdate;

        SET @startdate = DATEADD(dd, 1, @startdate);
    END

    INSERT INTO dbo.DimTiempo(TiempoID, 
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
                               es_feriado)
    SELECT 
        TiempoID = CONVERT(INT, CONVERT(VARCHAR, dl.Full_Fecha, 112)),  -- Aquí podrías ajustar si necesitas un ID diferente
        FullFecha = dl.Full_Fecha,
        DiaNumeroSemana = DATEPART(dw, dl.Full_Fecha),
        NombreDia = DATENAME(WEEKDAY, dl.Full_Fecha),
        NumeroDiaMes = DATEPART(d, dl.Full_Fecha),
        NumeroDiaAnio = DATEPART(dy, dl.Full_Fecha),
        SemanaNumeroAnio = DATEPART(wk, dl.Full_Fecha),
        Mes = MONTH(dl.Full_Fecha),
        NombreMes = DATENAME(MONTH, dl.Full_Fecha),
        Trimestre = DATEPART(qq, dl.Full_Fecha),
        Anio = YEAR(dl.Full_Fecha),
        EsFinDeSemana = CASE WHEN DATEPART(dw, dl.Full_Fecha) IN (1, 7) THEN 1 ELSE 0 END,
        EsFeriado = 0  -- Ajusta esto según tus necesidades

    FROM @datelist dl 
    LEFT OUTER JOIN dbo.DimTiempo dt ON (dl.Full_Fecha = dt.Full_Fecha)
    WHERE dt.Full_Fecha IS NULL;

    COMMIT TRAN
END
GO

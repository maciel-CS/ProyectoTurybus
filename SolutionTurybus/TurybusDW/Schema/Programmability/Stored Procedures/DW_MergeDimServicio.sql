CREATE PROCEDURE [dbo].[DW_MergeDimServicio]
AS
BEGIN
	UPDATE dc
	SET  [FechaCreacion] = sc.[FechaCreacion]
        ,[HoraSalida] = sc.[HoraSalida]
        ,[HoraLlegada] = sc.[HoraLlegada]
        ,[DiasProgramados] = sc.[DiasProgramados]
    FROM [dbo].[DimServicio]         dc
    INNER JOIN [staging].[Servicio]  sc ON (dc.[ServicioSK]=sc.[ServicioSK])
END
GO
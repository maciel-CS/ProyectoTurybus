CREATE PROCEDURE [dbo].[DW_MergeDimServicio]
AS
BEGIN
	UPDATE dc
	SET [id_ruta] = sc.[id_ruta]
		,[fecha] = sc.[fecha]
        ,[hora_salida] = sc.[hora_salida]
        ,[hora_llegada] = [hora_llegada]
        ,[Dias_programados] = [Dias_programados]
    FROM [dbo].[DimServicio]         dc
    INNER JOIN [staging].[Servicio]  sc ON (dc.[ServioSK]=sc.[ServicioSK])
END
GO
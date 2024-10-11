CREATE PROCEDURE [dbo].[DW_MergeDimActividadTuristica]
AS
BEGIN
	UPDATE dc
	SET  [Nombre] = sc.[Nombre]
        ,[Duracion] = sc.[Duracion]
        ,[RutaTuristicaID] = sc.[RutaTuristicaID]
        ,[CostoActividad] = sc.[CostoActividad]
    FROM [dbo].[DimActividadTuristica]    dc
    INNER JOIN [Staging].[ActividadTuristica] sc ON (dc.[ActividadTuristicaSK] = sc.[ActividadTuristicaSK])
END
GO



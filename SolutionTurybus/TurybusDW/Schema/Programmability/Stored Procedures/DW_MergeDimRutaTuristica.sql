CREATE PROCEDURE [dbo].[DW_MergeDimRutaTuristica]
AS
BEGIN
	UPDATE dc
	SET  [TiempoViaje] = sc.[TiempoViaje]
        ,[LugarOrigenID] = sc.[LugarOrigenID]
        ,[LugarDestinoID] = sc.[LugarDestinoID]
        ,[CostoTransporte] = sc.[CostoTransporte]
        ,[TiempoParada] = sc.[TiempoParada]
    FROM [dbo].[DimRutaTuristica]      dc
    INNER JOIN [Staging].[RutaTuristica] sc ON (dc.[RutaTuristicaSK] = sc.[RutaTuristicaSK])
END
GO

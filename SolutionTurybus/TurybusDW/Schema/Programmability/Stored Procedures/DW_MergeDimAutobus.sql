CREATE PROCEDURE [dbo].[DW_MergeDimAutobus]
AS
BEGIN
	UPDATE dc
	SET [Matricula] = sc.[Matricula]
		,[NumeroPlazas] = sc.[NumeroPlazas]
        ,[Modelo] = sc.[Modelo]
        ,[NumeroRevisiones] = sc.[NumeroRevisiones]
        ,[NumeroReparaciones] = sc.[NumeroReparaciones]
        ,[CostoTotalRevisiones] = sc.[CostoTotalRevisiones]
        ,[CostoTotalReparaciones] = sc.[CostoTotalReparaciones]
        ,[CostoTotalRepuestos] = sc.[CostoTotalRepuestos]
    FROM [dbo].[DimAutobus]         dc
    INNER JOIN [staging].[Autobus]  sc ON (dc.[AutobusSK]=sc.[AutobusSK])
END
GO
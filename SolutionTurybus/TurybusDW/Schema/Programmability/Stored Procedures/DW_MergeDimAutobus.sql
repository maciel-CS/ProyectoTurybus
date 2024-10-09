CREATE PROCEDURE [dbo].[DW_MergeDimAutobus]
AS
BEGIN
	UPDATE dc
	SET [Matricula] = sc.[Matricula]
		,[Numero_de_plazas] = sc.[Numero_de_plazas]
        ,[Modelo] = sc.[Modelo]
        ,[Numero_de_revisiones] = sc.[Numero_de_revisiones]
        ,[Numero_de_reparaciones] = sc.[Numero_de_reparaciones]
        ,[Costo_total_revisiones] = sc.[Costo_total_revisiones]
        ,[Costo_total_reparaciones] = sc.[Costo_total_reparaciones]
        ,[Costo_total_repuestos] = sc.[Costo_total_repuestos]
    FROM [dbo].[DimAutobus]         dc
    INNER JOIN [staging].[Autobus]  sc ON (dc.[AutobusSK]=sc.[AutobusSK])
END
GO
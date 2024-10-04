CREATE PROCEDURE [dbo].[DW_MergeDimConductor]
AS
BEGIN
	UPDATE dc
	SET [CI] = sc.[CI]
		,[Apellidos] = sc.[Apellidos]
        ,[Nombre] = sc.[Nombre]
        ,[Telefono] = [Telefono]
        ,[Direccion] = [Direccion]
    FROM [dbo].[DimConductor]         dc
    INNER JOIN [staging].[Conductor]  sc ON (dc.[ConductorSK]=sc.[ConductorSK])
END
GO
CREATE PROCEDURE [dbo].[DW_MergeDimConductor]
AS
BEGIN
	UPDATE dc
	SET [CI] = sc.[CI]
		,[Apellidos] = sc.[Apellidos]
        ,[Nombre] = sc.[Nombre]
        ,[Telefono] = sc.[Telefono]
        ,[Direccion] = sc.[Direccion]
    FROM [dbo].[DimConductor]         dc
    INNER JOIN [staging].[Conductor] sc ON (dc.[ConductorSK]=sc.[ConductorSK])
END
GO
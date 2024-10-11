CREATE PROCEDURE [dbo].[DW_MergeDimTurista]
AS
BEGIN
	UPDATE dc
	SET  [Ci] = sc.[Ci]
        ,[Apellidos] = sc.[Apellidos]
        ,[Nombre] = sc.[Nombre]
        ,[NumeroTelefono] = sc.[NumeroTelefono]
        ,[Direccion] = sc.[Direccion]
        ,[Nit] = sc.[Nit]
    FROM [dbo].[DimTurista]          dc
    INNER JOIN [Staging].[Turista]   sc ON (dc.[TuristaSK] = sc.[TuristaSK])
END
GO

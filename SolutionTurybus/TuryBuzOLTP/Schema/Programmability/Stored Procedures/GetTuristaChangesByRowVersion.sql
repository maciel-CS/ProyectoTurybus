CREATE PROCEDURE [dbo].[GetTuristaChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT  id ,                 
    CI, 
    Apellidos, 
    Nombre, 
    Telefono, 
    Direccion, 
    Nit
	FROM [dbo].[Turista]
	WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO
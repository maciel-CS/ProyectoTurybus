CREATE PROCEDURE [dbo].[GetConductorChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT  id, 
            CI,	
            Apellidos,                            
            Nombre,                         
	        Telefono,
			Direccion
	  FROM [dbo].[Conductor]
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO
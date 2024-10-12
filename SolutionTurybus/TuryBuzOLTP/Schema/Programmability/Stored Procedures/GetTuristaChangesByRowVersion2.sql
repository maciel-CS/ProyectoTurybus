CREATE PROCEDURE [dbo].[GetTuristaChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT  id, 
            Ci,	
            Apellidos,                            
            Nombre,                         
	        Numero_de_Telefono,
			Direccion,
			Nit
	  FROM [dbo].[Turista]
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO
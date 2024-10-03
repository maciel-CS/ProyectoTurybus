CREATE PROCEDURE [dbo].[GeAutobusChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT  id, 
            Matricula,	
            Numero_de_plazas,                            
            Modelo,                         
	        Fabricante,
			Descripcion_caracteristicas
	  FROM [dbo].[Autobus]
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO
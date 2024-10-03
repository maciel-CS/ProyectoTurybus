CREATE PROCEDURE [dbo].[GetRevisionChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT  id, 
            id_autobus,	
            fecha_revision,                            
            diagnostico,                         
	        costo_revision
	  FROM [dbo].[Revision]
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO
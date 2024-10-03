CREATE PROCEDURE [dbo].[GetLugarTuristicoChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT  id, 
            Nombre,	
            descripcion                            
      FROM [dbo].[LugarTuristico]
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO
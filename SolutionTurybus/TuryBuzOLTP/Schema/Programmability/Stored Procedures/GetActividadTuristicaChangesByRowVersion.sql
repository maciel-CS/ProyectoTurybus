CREATE PROCEDURE [dbo].[GetActividadTuristicaChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT  id, 
            Nombre,	
            Duracion,                            
            id_RutaTuristica,                         
	        Costo_Actividad
	  FROM [dbo].[ActividadTurista]
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO
CREATE PROCEDURE [dbo].[GetRutaTuristicaChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT  id, 
            id_lugarOrigen,	
            id_LugarDestino,                            
            Tiempo_de_parada,               
	        Costo_Transporte,
	  FROM [dbo].[RutaTuristica]
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO
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
		Costo_Transporte
		tiempoParada,
		tiempo_viaje
	  FROM [dbo].[RutaTuristica]
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO

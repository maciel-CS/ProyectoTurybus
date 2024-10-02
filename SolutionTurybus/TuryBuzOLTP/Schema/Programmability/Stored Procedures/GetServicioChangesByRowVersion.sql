CREATE PROCEDURE [dbo].[GetServicioChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT  id ,                 
	FechaCreacion,
    id_ruta,                           
    hora_salida,                      
    hora_llegada,                     
    id_conductor,                      
    id_autobus,                        
	Dias_programados
	FROM [dbo].[Servicio]
	WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO
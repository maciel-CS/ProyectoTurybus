CREATE PROCEDURE [dbo].[GetDetalleServicioChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT     id ,                
    id_servicioAdquirido ,                            
    id_ActividadTuristica                	
	FROM [dbo].[DetalleServicio] 
	WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	AND [rowversion] <= CONVERT(ROWVERSION,@endRow);
END
GO
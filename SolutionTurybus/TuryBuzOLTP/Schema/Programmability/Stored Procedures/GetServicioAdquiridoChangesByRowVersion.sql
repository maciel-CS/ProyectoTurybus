CREATE PROCEDURE [dbo].[GetServicioAdquiridoChangesByRowVersion]
(
    @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT   id,                
	id_Servicio,
    id_Turista,
	FechaAdquirida 
	FROM [dbo].[ServicioAdquirido]
	WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO
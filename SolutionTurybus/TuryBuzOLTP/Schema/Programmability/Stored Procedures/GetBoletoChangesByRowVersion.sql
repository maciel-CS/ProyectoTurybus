CREATE PROCEDURE [dbo].[GetBoletoChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT    id, 
            id_ServicioAdquirido,	
            FechaDeViaje,                            
            NroFactura,                         
	        NroAsiento
	  FROM [dbo].[Boleto]
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO
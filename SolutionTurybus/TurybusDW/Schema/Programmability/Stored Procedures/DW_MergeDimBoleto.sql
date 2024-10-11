CREATE PROCEDURE [dbo].[DW_MergeDimBoleto]
AS
BEGIN

	UPDATE dc
	SET [FechaDeViaje]    = sc.[FechaDeviaje]
	   ,[NroFactura] = sc.[NroFactura]
	   ,[NroAsiento]    = sc.[NroAsiento]
	   	FROM [dbo].[DimBoleto]         dc
	INNER JOIN boleto sc ON (dc.[BoletoSK]=sc.[BoletoSK])
END
GO

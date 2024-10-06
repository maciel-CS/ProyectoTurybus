CREATE PROCEDURE [dbo].[DW_MergeDimBoleto]
AS
BEGIN

	UPDATE db
	SET [ProductName]  = sb.[ProductName]
	   ,[BrandName]    = sb.[BrandName]
	   ,[CategoryName] = sb.[CategoryName]
	   ,[ModelYear]    = sb.[ModelYear]
	   ,[ListPrice]    = sb.[ListPrice]
	FROM [dbo].[DimBoleto]         db
	INNER JOIN boleto sb ON (db.[BoletoSK]=sb.[BoletoSK])
END
GO

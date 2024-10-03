CREATE PROCEDURE [dbo].[GetReparacionChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT  id, 
            id_revision,	
            codigo_reparacion,                            
            tiempo_empleado,                         
	        costo_reparacion,
			costo_repuestos
	  FROM [dbo].[Reparacion]
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO
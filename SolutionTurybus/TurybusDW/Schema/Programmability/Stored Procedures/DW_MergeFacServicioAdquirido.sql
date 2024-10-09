CREATE PROCEDURE [dbo].[DW_MergeFactOrders]
AS
BEGIN

	UPDATE dc
	SET ServivioAdquiridoID	= sc.ServivioAdquiridoID
			,TuristaID	= sc.TuristaID
			,ServicioSK	= sc.ServicioSK
			,FechaAdquirida	= sc.FechaAdquirida
			,ConductorSK	= sc.ConductorSK
			,AutobusSK	= sc.AutobusSK
			,PrecioPaquete 	= sc.PrecioPaquete 
			,CostoServicio 	= sc.CostoServicio 
			,NumeroDeActividades	= sc.NumeroDeActividades
			,ListadeActividades 	= sc.ListadeActividades 
	FROM FactServicioAdquirido dc
	INNER JOIN [staging].[ServicioAdquirido] sc ON (dc.ServivioAdquiridoID = sc.ServivioAdquiridoID AND dc.TuristaID = sc.TuristaID)
END
GO
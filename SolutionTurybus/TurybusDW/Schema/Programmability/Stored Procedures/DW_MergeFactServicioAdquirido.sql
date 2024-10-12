CREATE PROCEDURE [dbo].[DW_MergeFactServicioAdquirido]
AS
BEGIN

	UPDATE dc
	SET      ServicioAdquiridoID	= sc.ServicioAdquiridoID     --ServicioAdquiridoID
			,TuristaID	= sc.TuristaID
			,ServicioSK	= sc.ServicioSK
			,FechaAdquiridaKey = sc.FechaAdquiridaKey
			,FechaAdquirida	= sc.FechaAdquirida
			,ConductorSK	= sc.ConductorSK
			,AutobusSK	= sc.AutobusSK
			,RutaTuristicaSK = sc.RutaTuristicaSK
			,PrecioPaquete 	= sc.PrecioPaquete 
			,CostoServicio 	= sc.CostoServicio 
			,NumeroDeActividades	= sc.NumeroDeActividades
			,ListadeActividades 	= sc.ListadeActividades 
	FROM [dbo].FactServicioAdquirido dc	
	INNER JOIN [staging].[ServicioAdquirido] sc ON (dc.ServicioAdquiridoID = sc.[ServicioAdquiridoID] AND dc.TuristaID = sc.[TuristaID])
END
GO



CREATE PROCEDURE [dbo].[DW_MergeFactServicioAdquirido]
AS
BEGIN

	UPDATE dc
	SET      ServicioAdquiridoID	= sc.ServicioAdquiridoID     --ServicioAdquiridoID
			,TuristaID	= sc.TuristaID
			,ServicioSK	= sc.ServicioSK
			,FechaAdquirida	= sc.FechaAdquirida
			,ConductorSK	= sc.ConductorSK
			,AutobusSK	= sc.AutobusSK
			,RutaTuristicaSK = sc.RutaTuristicaSK
            ,ActividadTuristicaSK = sc.ActividadTuristicaSK
			,BoletoSK = sc.BoletoSK
			,PrecioPaquete 	= sc.PrecioPaquete 
			,CostoServicio 	= sc.CostoServicio 
			,NumeroDeActividades	= sc.NumeroDeActividades
			,ListadeActividades 	= sc.ListadeActividades 
	FROM FactServicioAdquirido dc
	INNER JOIN [staging].[ServicioAdquirido] sc ON (dc.[ServicioAdquiridoSK] = sc.[ServicioAdquiridoID] AND dc.TuristaID = sc.[TuristaSK])
END
GO



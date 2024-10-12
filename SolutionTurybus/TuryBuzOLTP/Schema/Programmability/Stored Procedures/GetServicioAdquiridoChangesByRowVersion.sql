Create  PROCEDURE [dbo].[GetServicioAdquiridoChangesByRowVersion]
(
    @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN

 
 with ServicioListaActividad ( IdServicio, NumeroActividades, ListaActividad ) AS
 (
  select serAd.Id IdServicio , Count(act.ID) NumeroActividades, STRING_AGG(CONVERT(NVARCHAR(max), ISNULL(act.Nombre,'N/A')), ',')  ListaActividad
  from ActividadTuristica act
  join DetalleServicio  det on  det.id_ActividadTuristica = act.id
  join ServicioAdquirido serAd on serAd.id = det.id_servicioAdquirido
  WHERE (serAd.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		AND serAd.[rowversion] <= CONVERT(ROWVERSION,@endRow))
  OR (act.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		AND act.[rowversion] <= CONVERT(ROWVERSION,@endRow))
  Group by  serAd.Id 

 )
	SELECT   serAd.id,                
	  id_Servicio,
      FechaAdquiridaKey = CONVERT(INT,
						(CONVERT(CHAR(4),DATEPART(YEAR,serAd.FechaAdquirida))
					  + CASE 
							WHEN DATEPART(MONTH,serAd.FechaAdquirida) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,serAd.FechaAdquirida))
							ELSE + CONVERT(CHAR(2),DATEPART(MONTH,serAd.FechaAdquirida))
						END
					  + CASE 
							WHEN DATEPART(DAY,serAd.FechaAdquirida) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,serAd.FechaAdquirida))
							ELSE + CONVERT(CHAR(2),DATEPART(DAY,serAd.FechaAdquirida))
						END)) ,
  serAd.FechaAdquirida,
  ser.id_conductor,
  ser.id_autobus ,
  ser.id_ruta ,
  0 PrecioPaquete ,
  0  CostoServicio ,
  serAd.id_Turista ,
  ListAct.NumeroActividades,
  ListAct.ListaActividad
	FROM [dbo].[ServicioAdquirido] serAd
	LEFT JOIN Servicio ser on ser.Id = serAd.id_Servicio
	--LEFT JOIN #costoTotalServicio costtot on ser.id = costtot.IdServicio
	LEFT JOIN ServicioListaActividad ListAct on ser.Id = ListAct.IdServicio
	LEFT  JOIN Turista tur on serAd.id_Turista = tur.id
	WHERE (serAd.[rowversion] > CONVERT(ROWVERSION,@startRow) 
	AND serAd.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (ser.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		AND ser.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (tur.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		AND tur.[rowversion] <= CONVERT(ROWVERSION,@endRow))

END

GO
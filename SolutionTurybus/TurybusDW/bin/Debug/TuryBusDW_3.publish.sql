﻿/*
Deployment script for TuribusDW

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "TuribusDW"
:setvar DefaultFilePrefix "TuribusDW"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL16.SQLSERVER2022\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL16.SQLSERVER2022\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
/*
The column [dbo].[FactServicioAdquirido].[FechaAdquiridaKey] on table [dbo].[FactServicioAdquirido] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[FactServicioAdquirido])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [staging].[ServicioAdquirido].[FechaAdquiridaKey] on table [staging].[ServicioAdquirido] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [staging].[ServicioAdquirido])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
PRINT N'Starting rebuilding table [dbo].[FactServicioAdquirido]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_FactServicioAdquirido] (
    [ServicioAdquiridoSK]  INT           NOT NULL,
    [ServicioAdquiridoID]  INT           NOT NULL,
    [TuristaID]            INT           NOT NULL,
    [ServicioSK]           INT           NOT NULL,
    [FechaAdquiridaKey]    INT           NOT NULL,
    [FechaAdquirida]       DATETIME      NOT NULL,
    [ConductorSK]          INT           NOT NULL,
    [AutobusSK]            INT           NOT NULL,
    [RutaTuristicaSK]      INT           NOT NULL,
    [ActividadTuristicaSK] INT           NOT NULL,
    [BoletoSK]             INT           NOT NULL,
    [PrecioPaquete]        DECIMAL (18)  NULL,
    [CostoServicio]        DECIMAL (18)  NULL,
    [NumeroDeActividades]  INT           NULL,
    [ListadeActividades]   VARCHAR (MAX) NULL
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[FactServicioAdquirido])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_FactServicioAdquirido] ([ServicioAdquiridoSK], [ServicioAdquiridoID], [TuristaID], [ServicioSK], [FechaAdquirida], [ConductorSK], [AutobusSK], [RutaTuristicaSK], [ActividadTuristicaSK], [BoletoSK], [PrecioPaquete], [CostoServicio], [NumeroDeActividades], [ListadeActividades])
        SELECT [ServicioAdquiridoSK],
               [ServicioAdquiridoID],
               [TuristaID],
               [ServicioSK],
               [FechaAdquirida],
               [ConductorSK],
               [AutobusSK],
               [RutaTuristicaSK],
               [ActividadTuristicaSK],
               [BoletoSK],
               [PrecioPaquete],
               [CostoServicio],
               [NumeroDeActividades],
               [ListadeActividades]
        FROM   [dbo].[FactServicioAdquirido];
    END

DROP TABLE [dbo].[FactServicioAdquirido];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_FactServicioAdquirido]', N'FactServicioAdquirido';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Starting rebuilding table [staging].[ServicioAdquirido]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [staging].[tmp_ms_xx_ServicioAdquirido] (
    [ServicioAdquiridoID]  INT           NOT NULL,
    [TuristaID]            INT           NOT NULL,
    [ServicioSK]           INT           NOT NULL,
    [FechaAdquiridaKey]    INT           NOT NULL,
    [FechaAdquirida]       DATETIME      NOT NULL,
    [ConductorSK]          INT           NOT NULL,
    [AutobusSK]            INT           NOT NULL,
    [RutaTuristicaSK]      INT           NOT NULL,
    [ActividadTuristicaSK] INT           NOT NULL,
    [BoletoSK]             INT           NOT NULL,
    [PrecioPaquete]        DECIMAL (18)  NULL,
    [CostoServicio]        DECIMAL (18)  NULL,
    [TuristaSK]            INT           NOT NULL,
    [NumeroDeActividades]  INT           NULL,
    [ListadeActividades]   VARCHAR (MAX) NULL
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [staging].[ServicioAdquirido])
    BEGIN
        INSERT INTO [staging].[tmp_ms_xx_ServicioAdquirido] ([ServicioAdquiridoID], [TuristaID], [ServicioSK], [FechaAdquirida], [ConductorSK], [AutobusSK], [RutaTuristicaSK], [ActividadTuristicaSK], [BoletoSK], [PrecioPaquete], [CostoServicio], [TuristaSK], [NumeroDeActividades], [ListadeActividades])
        SELECT [ServicioAdquiridoID],
               [TuristaID],
               [ServicioSK],
               [FechaAdquirida],
               [ConductorSK],
               [AutobusSK],
               [RutaTuristicaSK],
               [ActividadTuristicaSK],
               [BoletoSK],
               [PrecioPaquete],
               [CostoServicio],
               [TuristaSK],
               [NumeroDeActividades],
               [ListadeActividades]
        FROM   [staging].[ServicioAdquirido];
    END

DROP TABLE [staging].[ServicioAdquirido];

EXECUTE sp_rename N'[staging].[tmp_ms_xx_ServicioAdquirido]', N'ServicioAdquirido';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Altering Procedure [dbo].[DW_MergeFactServicioAdquirido]...';


GO
ALTER PROCEDURE [dbo].[DW_MergeFactServicioAdquirido]
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
/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]		
--------------------------------------------------------------------------------------
*/

IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Servicio')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Servicio', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Conductor')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Conductor', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'RutaTuristica')
 BEGIN
  INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('RutaTuristica', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'ActividadTuristica')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('ActividadTuristica', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Turista')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Turista', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Autobus')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Autobus', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'ServicioAdquirido')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('ServicioAdquirido', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Boleto')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Boleto', 0)
 END
GO

IF NOT EXISTS(SELECT TOP(1) 1 FROM [dbo].[DimTiempo])
BEGIN
    BEGIN TRAN 

    DECLARE @startdate DATE = '2016-01-01',
            @enddate   DATE = '2025-01-01';
    DECLARE @datelist TABLE(Full_Fecha DATE);

    IF @startdate IS NULL
    BEGIN
        SELECT TOP 1 
               @startdate = Full_Fecha
        FROM dbo.DimTiempo
        ORDER BY Full_Fecha ASC;
    END

    WHILE (@startdate <= @enddate)
    BEGIN 
        INSERT INTO @datelist(Full_Fecha)
        SELECT @startdate;

        SET @startdate = DATEADD(dd, 1, @startdate);
    END

    INSERT INTO dbo.DimTiempo(TiempoID, 
                               full_fecha, 
                               dia_numero_semana, 
                               nombre_dia, 
                               numero_dia_mes, 
                               numero_dia_anio, 
                               semana_numero_anio, 
                               mes, 
                               nombre_mes, 
                               trimestre, 
                               anio, 
                               es_fin_de_semana, 
                               es_feriado)
    SELECT 
        TiempoID = CONVERT(INT, CONVERT(VARCHAR, dl.Full_Fecha, 112)),  -- Aquí podrías ajustar si necesitas un ID diferente
        FullFecha = dl.Full_Fecha,
        DiaNumeroSemana = DATEPART(dw, dl.Full_Fecha),
        NombreDia = DATENAME(WEEKDAY, dl.Full_Fecha),
        NumeroDiaMes = DATEPART(d, dl.Full_Fecha),
        NumeroDiaAnio = DATEPART(dy, dl.Full_Fecha),
        SemanaNumeroAnio = DATEPART(wk, dl.Full_Fecha),
        Mes = MONTH(dl.Full_Fecha),
        NombreMes = DATENAME(MONTH, dl.Full_Fecha),
        Trimestre = DATEPART(qq, dl.Full_Fecha),
        Anio = YEAR(dl.Full_Fecha),
        EsFinDeSemana = CASE WHEN DATEPART(dw, dl.Full_Fecha) IN (1, 7) THEN 1 ELSE 0 END,
        EsFeriado = 0  -- Ajusta esto según tus necesidades

    FROM @datelist dl 
    LEFT OUTER JOIN dbo.DimTiempo dt ON (dl.Full_Fecha = dt.Full_Fecha)
    WHERE dt.Full_Fecha IS NULL;

    COMMIT TRAN
END
GO

IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[DimTiempo]
			  WHERE [TiempoID] = 0)
BEGIN

INSERT INTO [dbo].[DimTiempo] (
    TiempoID,
    full_fecha,
    dia_numero_semana,
    nombre_dia,
    numero_dia_mes,
    numero_dia_anio,
    semana_numero_anio,
    mes,
    nombre_mes,
    trimestre,
    anio,
    es_fin_de_semana,
    es_feriado
) VALUES (
    0,                     -- TiempoID (puedes establecer un valor específico o dejar que sea autogenerado si es necesario)
    '1900-01-01',        -- full_fecha (una fecha válida)
    0,                    -- dia_numero_semana
    'N/A',                -- nombre_dia (puedes usar un valor predeterminado)
    0,                    -- numero_dia_mes
    0,                    -- numero_dia_anio
    0,                    -- semana_numero_anio
    0,                    -- mes
    'N/A',                -- nombre_mes
    0,                    -- trimestre
    0,                    -- anio
    0,                    -- es_fin_de_semana
    0                     -- es_feriado
);

    
END
GO

GO
PRINT N'Update complete.';


GO

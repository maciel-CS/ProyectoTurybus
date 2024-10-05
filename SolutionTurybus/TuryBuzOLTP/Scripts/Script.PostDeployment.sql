/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					D:\Mscs\Perso\MAESTRIA\DataManagmentBussinesIntelligent\ProyectoTurybus\SolutionTurybus\TuryBuzOLTP\Scripts
--------------------------------------------------------------------------------------
*/

:r .\clean.data.sql
:r .\turista.data.sql
:r .\Autobus.data.sql
:r .\Conductor.data.sql
:r .\Revision.data.sql
:r .\Reparacion.data.sql
:r .\LugaresTuristicos.data.sql
:r .\RutaTuristica.data.sql
:r .\ActividadTuristica.data.sql
:r .\Servicio.data.sql
:r .\ServicioAdquirido.data.sql
:r .\Boleto.data.sql
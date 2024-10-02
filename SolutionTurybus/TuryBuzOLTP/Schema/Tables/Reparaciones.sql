CREATE TABLE [dbo].[Reparaciones] (
    [id]               [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_reparaciones PRIMARY KEY,
    [id_revision]      [int]               NOT NULL,
										   NOT NULL,
    [tiempo_empleado]  [time]              NOT NULL,
    [costo_reparacion] [decimal](10,2)     NOT NULL,
    [costo_repuestos]  [decimal](10,2)     NOT NULL,
    [rowversion]       [timestamp]         NOT NULL
);
GO
-- comG
ALTER TABLE [dbo].[Reparaciones] ADD CONSTRAINT FK_reparaciones_revision FOREIGN KEY([id_revision]) REFERENCES [dbo].[Revision] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE;
GO

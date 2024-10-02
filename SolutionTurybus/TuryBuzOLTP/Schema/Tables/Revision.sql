CREATE TABLE [dbo].[Revision] (
    [id]             [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_revision PRIMARY KEY,
    [id_autobus]     [int]               NOT NULL,
    [fecha_revision] [date]              NOT NULL,
    [diagnostico]    [text]              NOT NULL,
    [costo_revision] [decimal](10,2)     NOT NULL,
    [rowversion]     [timestamp]         NOT NULL
);
GO

ALTER TABLE [dbo].[Revision] ADD CONSTRAINT FK_revision_autobus FOREIGN KEY([id_autobus]) REFERENCES [dbo].[Autobus] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE;
GO
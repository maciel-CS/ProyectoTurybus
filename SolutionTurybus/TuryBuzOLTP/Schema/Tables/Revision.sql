CREATE TABLE [dbo].[Revision] (
    id INT PRIMARY KEY IDENTITY(1,1),
    id_autobus INT NOT NULL,
    fecha_revision DATE NOT NULL,
    diagnostico VARCHAR(MAX),
    costo_revision DECIMAL(10, 2) NOT NULL, 
    rowversion TIMESTAMP NOT NULL,     
    CONSTRAINT FK_revision_autobus FOREIGN KEY (id_autobus)  REFERENCES Autobus(Id)
);
GO

-- Crear índice para mejorar consultas sobre id_autobus
CREATE INDEX IX_Revision_id_autobus ON [dbo].[Revision](id_autobus);
GO
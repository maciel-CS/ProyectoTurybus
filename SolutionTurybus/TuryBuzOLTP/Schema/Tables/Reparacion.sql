CREATE TABLE [dbo].[Reparacion] (
    id INT PRIMARY KEY IDENTITY(1,1),
    id_revision INT NOT NULL,
    codigo_reparacion VARCHAR(50) NOT NULL,
    tiempo_empleado TIME,
    costo_reparacion DECIMAL(10, 2) NOT NULL, 
    costo_repuestos DECIMAL(10, 2) NOT NULL,  
    rowversion TIMESTAMP NOT NULL,               
    CONSTRAINT FK_reparacion_revision FOREIGN KEY (id_revision) REFERENCES [dbo].[Revision] (id)    
);
GO

-- Crear índice para mejorar consultas sobre id_revision
CREATE INDEX IX_Reparacion_id_revision ON [dbo].[Reparacion](id_revision);
GO

CREATE TABLE [dbo].[DimAutobus](    
    Matricula VARCHAR(50) NOT NULL,
    Numero_de_plazas INT NOT NULL,
    Modelo VARCHAR(100),
    -- fabricante VARCHAR(100),
    -- descripcion_caracteristicas TEXT,
    Numero_de_revisiones INT,
    Numero_de_reparaciones INT,
    Costo_total_revisiones DECIMAL(10,2),
    Costo_total_reparaciones DECIMAL(10,2),
    Costo_total_repuestos DECIMAL(10,2)
);
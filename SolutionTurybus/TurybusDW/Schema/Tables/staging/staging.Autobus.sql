CREATE TABLE [staging].[Autobus]( 
    AutobusSK INT,
    Matricula VARCHAR(50) NOT NULL,
    NumeroPlazas INT NOT NULL,
    Modelo VARCHAR(100),
    -- fabricante VARCHAR(100),
    -- descripcion_caracteristicas TEXT,
    NumeroRevisiones INT,
    NumeroReparaciones INT,
    CostoTotalRevisiones DECIMAL(10,2),
    CostoTotalReparaciones DECIMAL(10,2),
    CostoTotalRepuestos DECIMAL(10,2)
);
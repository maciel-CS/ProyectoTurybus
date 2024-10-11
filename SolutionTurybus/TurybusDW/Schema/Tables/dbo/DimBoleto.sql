CREATE TABLE [dbo].[DimBoleto] (
    BoletoSK INT IDENTITY(1,1) NOT NULL PRIMARY KEY,  -- Surrogate Key
    BoletoID INT NOT NULL,                               -- ID del boleto (clave de negocio)
    ServicioAdquiridoSK INT NOT NULL,                    -- Clave sustituta de ServicioAdquirido
    FechaDeViaje DATETIME NOT NULL,                      -- Fecha del viaje
    NroFactura INT NOT NULL,                             -- Número de factura
    NroAsiento INT NOT NULL,                             -- Número de asiento
    rowversion TIMESTAMP NOT NULL,                       -- Control de versiones de fila
    --CONSTRAINT FK_DimBoleto_ServicioAdquirido FOREIGN KEY (ServicioAdquiridoSK) REFERENCES ServicioAdquiridoSK(ServicioAdquiridoSK)
);

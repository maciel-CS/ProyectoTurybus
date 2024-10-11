CREATE TABLE [Staging].[Boleto] (
    BoletoSK INT,                                      -- Identificador del boleto (sin clave primaria en staging)
    ServicioAdquiridoID INT NOT NULL,                  -- ID del servicio adquirido
    FechaDeViaje DATETIME NOT NULL,                    -- Fecha del viaje
    NroFactura INT NOT NULL,                           -- Número de factura
    NroAsiento INT NOT NULL                            -- Número de asiento
);

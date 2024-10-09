CREATE TABLE [Staging].[Turista]
(
    id_turista INT,                       -- No es clave primaria en la tabla staging
    Ci VARCHAR(50),                       -- Número de cédula de identidad
    Apellidos VARCHAR(255),               -- Apellidos del turista
    Nombre VARCHAR(255),                  -- Nombre del turista
    Numero_de_Telefono VARCHAR(20),       -- Número de teléfono
    Direccion VARCHAR(255),               -- Dirección del turista
    Nit INT                               -- Número de identificación tributaria (NIT)
);

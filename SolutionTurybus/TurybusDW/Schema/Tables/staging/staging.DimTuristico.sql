CREATE TABLE [Staging].[Turista]
(
    id_turista INT,                       -- No es clave primaria en la tabla staging
    Ci VARCHAR(50),                       -- N�mero de c�dula de identidad
    Apellidos VARCHAR(255),               -- Apellidos del turista
    Nombre VARCHAR(255),                  -- Nombre del turista
    Numero_de_Telefono VARCHAR(20),       -- N�mero de tel�fono
    Direccion VARCHAR(255),               -- Direcci�n del turista
    Nit INT                               -- N�mero de identificaci�n tributaria (NIT)
);

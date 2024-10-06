CREATE TABLE [dbo].[DimServicio](
	ServicioSK INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimServicio PRIMARY KEY,  -- Surrogate Key (Clave sustituta)
    ServicioID INT NOT NULL,  -- Identificador de negocio
	id_ruta INT,
	fecha DATE,
	hora_salida TIME,
	hora_llegada TIME,
	Dias_programados TEXT
	);
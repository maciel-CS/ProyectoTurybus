CREATE TABLE [dbo].[DimServicio](
	id INT PRIMARY KEY IDENTITY (1,1),
	id_ruta INT,
	fecha DATE,
	hora_salida TIME,
	hora_llegada TIME,
	Dias_programados TEXT
	);
CREATE TABLE [dbo].[DimTiempo] (
    id_tiempo INT PRIMARY KEY IDENTITY(1,1),
    full_fecha DATE NOT NULL,
    dia_numero_semana INT NOT NULL,
);
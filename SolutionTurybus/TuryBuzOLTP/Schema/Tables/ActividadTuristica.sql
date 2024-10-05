CREATE TABLE [dbo].[ActividadTuristica]
(
	id INT PRIMARY KEY IDENTITY(1,1),           -- Clave primaria autoincremental
    Nombre VARCHAR(100) NOT NULL,               -- Nombre de la actividad
    Duracion TIME NOT NULL,                     -- Duración de la actividad
    id_RutaTuristica INT NOT NULL,              -- Clave foránea que referencia a la tabla RutasTuristicas
	Costo_Actividad   decimal(10,2)         NOT NULL,
	[rowversion]        [timestamp]         NOT NULL

    -- Llave foránea para asegurar la integridad referencial
    
);
Go
CREATE TABLE [dbo].[RutaTuristica]
(
	  Id INT PRIMARY KEY IDENTITY(1,1),           -- Clave primaria autoincremental
    tiempo_viaje TIME NOT NULL,                       -- Duración del viaje
    id_lugar_origen INT NOT NULL,                     -- ID del lugar de origen, relación con la tabla LugaresTuristicos
    id_lugar_destino INT NOT NULL,                    -- ID del lugar de destino, relación con la tabla LugaresTuristicos
	Costo_Transporte decimal (10,2)     NOT NULL,
    tiempo_parada TIME NOT NULL,                      -- Tiempo de parada en el destino

    -- Llaves foráneas para asegurar la integridad referencial
    CONSTRAINT FK_RutaTuristica_LugarOrigen FOREIGN KEY (id_lugar_origen) REFERENCES LugarTuristico(id),
    CONSTRAINT FK_RutaTuristica_LugarDestino FOREIGN KEY (id_lugar_destino) REFERENCES LugarTuristico(id)
);
GO



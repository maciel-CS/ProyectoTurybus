﻿CREATE TABLE [dbo].[RutaTuristica]
(
	  Id INT PRIMARY KEY IDENTITY(1,1),           -- Clave primaria autoincremental
    tiempo_viaje TIME NOT NULL,                       -- Duración del viaje
    id_lugarOrigen INT NOT NULL,                     -- ID del lugar de origen, relación con la tabla LugaresTuristicos
    id_lugarDestino INT NOT NULL,                    -- ID del lugar de destino, relación con la tabla LugaresTuristicos
	  Costo_Transporte decimal (10,2)     NOT NULL,
    tiempoParada TIME NOT NULL,            
    [rowversion] TIMESTAMP NOT NULL,
    CONSTRAINT FK_RutaTuristica_LugarOrigen FOREIGN KEY (id_lugarOrigen) REFERENCES LugarTuristico(id),
    CONSTRAINT FK_RutaTuristica_LugarDestino FOREIGN KEY (id_lugarDestino) REFERENCES LugarTuristico(id)
);
GO



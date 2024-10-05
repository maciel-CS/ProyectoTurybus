CREATE TABLE [dbo].[Servicio] (
    id INT PRIMARY KEY IDENTITY(1,1),                 
	FechaCreacion DATETIME NOT NULL,
    id_ruta INT NOT NULL,                           
    hora_salida TIME NOT NULL,                      
    hora_llegada TIME NOT NULL,                     
    id_conductor INT NOT NULL,                      
    id_autobus INT NOT NULL,                        
	Dias_programados varchar(100),	
	rowversion timestamp  NOT NULL
	
    CONSTRAINT FK_Servicio_Conductor FOREIGN KEY (id_conductor) REFERENCES Conductor(id),
    CONSTRAINT FK_Servicio_Autobus FOREIGN KEY (id_autobus) REFERENCES Autobus(id), 
    CONSTRAINT [FK_Servicio_RutasTuristicas] FOREIGN KEY (id_ruta) REFERENCES rutaTuristica(Id)
);

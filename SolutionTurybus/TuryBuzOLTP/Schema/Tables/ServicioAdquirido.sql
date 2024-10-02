CREATE TABLE [dbo].[ServicioAdquirido] (
    id INT PRIMARY KEY IDENTITY(1,1),                
	id_Servicio INT NOT NULL,
    id_Turista INT NOT NULL,
	FechaAdquirida DATETIME NOT NULL,	
	rowversion timestamp  NOT NULL
    CONSTRAINT FK_ServicioAdquirido_Servicio FOREIGN KEY (id_Servicio) REFERENCES Servicio(id),
    CONSTRAINT FK_ServicioAdquirido_Turista FOREIGN KEY (id_Turista) REFERENCES Turista(id)
);

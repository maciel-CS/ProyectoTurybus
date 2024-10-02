CREATE TABLE [dbo].[DetalleServicio] (
    id INT PRIMARY KEY IDENTITY(1,1),                
    id_servicioAdquirido INT NOT NULL,                            
    id_ActividadTuristica INT NOT NULL,	
	rowversion timestamp  NOT NULL                        
	
    CONSTRAINT FK_DetalleServicio_ServicioAdquirido FOREIGN KEY (id_servicioAdquirido) REFERENCES ServicioAdquirido(id),
    CONSTRAINT FK_DetalleServicio_ActividadTuristica FOREIGN KEY (id_ActividadTuristica) REFERENCES ActividadTuristica(id)
);

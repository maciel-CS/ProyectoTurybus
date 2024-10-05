CREATE TABLE [dbo].[Boleto] (
    id INT PRIMARY KEY IDENTITY(1,1), 
    id_ServicioAdquirido INT NOT NULL,	
    FechaDeViaje DATETIME NOT NULL,                            
    NroFactura INT NOT NULL,                         
	  NroAsiento INT NOT NULL ,	
	  rowversion timestamp  NOT NULL
    CONSTRAINT FK_Boleto_ServicioAdquirido FOREIGN KEY (id_ServicioAdquirido) REFERENCES ServicioAdquirido(id)
    
);

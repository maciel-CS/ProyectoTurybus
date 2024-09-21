
CREATE TABLE LugaresTuristicos (
    id INT PRIMARY KEY IDENTITY(1,1),           -- Clave primaria autoincremental
	Nombre VARCHAR(200) NOT NULL ,
    descripcion VARCHAR(MAX) NOT NULL                 -- Descripción del lugar turístico
);


CREATE TABLE RutasTuristicas (
    id INT PRIMARY KEY IDENTITY(1,1),           -- Clave primaria autoincremental
    tiempo_viaje TIME NOT NULL,                       -- Duración del viaje
    id_lugar_origen INT NOT NULL,                     -- ID del lugar de origen, relación con la tabla LugaresTuristicos
    id_lugar_destino INT NOT NULL,                    -- ID del lugar de destino, relación con la tabla LugaresTuristicos
    tiempo_parada TIME NOT NULL,                      -- Tiempo de parada en el destino
    
    -- Llaves foráneas para asegurar la integridad referencial
    CONSTRAINT FK_RutaTuristica_LugarOrigen FOREIGN KEY (id_lugar_origen) REFERENCES LugaresTuristicos(id),
    CONSTRAINT FK_RutaTuristica_LugarDestino FOREIGN KEY (id_lugar_destino) REFERENCES LugaresTuristicos(id)
);

CREATE TABLE Actividades (
    id INT PRIMARY KEY IDENTITY(1,1),           -- Clave primaria autoincremental
    Nombre VARCHAR(100) NOT NULL,               -- Nombre de la actividad
    Duracion TIME NOT NULL,                     -- Duración de la actividad
    id_RutaTuristica INT NOT NULL,              -- Clave foránea que referencia a la tabla RutasTuristicas

    -- Llave foránea para asegurar la integridad referencial
    CONSTRAINT FK_Actividades_Ruta FOREIGN KEY (id_RutaTuristica) REFERENCES RutasTuristicas(id)
);
GO


-- Tabla Conductor
CREATE TABLE Conductor (
    id INT PRIMARY KEY IDENTITY(1,1),
    CI VARCHAR(20) NOT NULL,
    Apellidos VARCHAR(50) NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Telefono VARCHAR(20),
    Direccion VARCHAR(100)
);
GO

-- Tabla Autobus
CREATE TABLE Autobus (
    id INT PRIMARY KEY IDENTITY(1,1),
    Matricula VARCHAR(20) NOT NULL,
    Numero_de_plazas INT NOT NULL,
    Modelo VARCHAR(50),
    Fabricante VARCHAR(50),
    Descripcion_caracteristicas VARCHAR(MAX)
);
GO

-- Tabla Revision
CREATE TABLE Revision (
    id INT PRIMARY KEY IDENTITY(1,1),
    id_autobus INT NOT NULL,
    fecha_revision DATE NOT NULL,
    diagnostico Text
    FOREIGN KEY (id_autobus) REFERENCES Autobus(id)
);
GO

-- Tabla Reparaciones
CREATE TABLE Reparaciones (
    id INT PRIMARY KEY IDENTITY(1,1),
    id_revision INT NOT NULL,
    codigo_reparacion VARCHAR(50) NOT NULL,
    tiempo_empleado TIME,
    FOREIGN KEY (id_revision) REFERENCES Revision(id)
);
GO



CREATE TABLE Servicio (
    id INT PRIMARY KEY IDENTITY(1,1),                 -- Clave primaria autoincremental
    id_ruta INT NOT NULL,                             -- ID de la ruta, relación con la tabla Ruta
    hora_salida TIME NOT NULL,                        -- Hora de salida del servicio
    hora_llegada TIME NOT NULL,                       -- Hora de llegada del servicio
    id_conductor INT NOT NULL,                        -- ID del conductor, relación con la tabla Conductor
    id_autobus INT NOT NULL,                          -- ID del autobús, relación con la tabla Autobus
    importe decimal,
	Dias_programados varchar(100)
    -- Llaves foráneas para asegurar la integridad referencial
    CONSTRAINT FK_Servicio_Ruta FOREIGN KEY (id_ruta) REFERENCES RutasTuristicas(id),
    CONSTRAINT FK_Servicio_Conductor FOREIGN KEY (id_conductor) REFERENCES Conductor(id),
    CONSTRAINT FK_Servicio_Autobus FOREIGN KEY (id_autobus) REFERENCES Autobus(id)
);


-- Tabla Pasajero
CREATE TABLE Pasajero (
    id INT PRIMARY KEY IDENTITY(1,1),
    CI VARCHAR(20) NOT NULL,
    Apellidos VARCHAR(50) NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Telefono VARCHAR(20),
    Direccion VARCHAR(100)
);
GO

CREATE TABLE Boleto (
    id INT PRIMARY KEY IDENTITY(1,1),        -- Clave primaria autoincremental
    id_servicio INT NOT NULL,                         -- ID del servicio
	id_pasajero INT NOT NULL,                         -- ID del pasajero
    fecha DATE NOT NULL,                              -- Fecha del servicio

    -- Llaves foráneas para asegurar la integridad referencial
    CONSTRAINT FK_Servicio_Boleto FOREIGN KEY (id_servicio) REFERENCES Servicio(id),
    CONSTRAINT FK_Boleto_Pasajero FOREIGN KEY (id_pasajero) REFERENCES Pasajero(id),
);

Go

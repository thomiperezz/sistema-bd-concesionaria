CREATE TABLE Cliente (
	idCliente INT PRIMARY KEY identity(1,1),
	ApellidoCliente VARCHAR(50) NOT NULL,
	NombreCliente VARCHAR(50) NOT NULL,
	DNI VARCHAR(50) NOT NULL,
	TelefonoCliente VARCHAR(50),
	Correo VARCHAR(50),
);

CREATE TABLE TipoTurno (
	idTipoTurno INT PRIMARY KEY identity(1,1),
	TipoTurno VARCHAR(30) NOT NULL,
	SubtipoTurno VARCHAR(30) NOT NULL,
	DuracionTurno INT CHECK(DuracionTurno=30 OR DuracionTurno=60),
);

CREATE TABLE Sucursal(
	idSucursal INT PRIMARY KEY identity(1,1),
	NombreSucursal VARCHAR(50) NOT NULL,
	Direccion VARCHAR(50) NOT NULL,
	TelefonoSucursal VARCHAR(50)
);

CREATE TABLE Agente (
	idAgente INT PRIMARY KEY identity(1,1),
	NombreAgente VARCHAR(50) NOT NULL,
	ApellidoAgente VARCHAR(50) NOT NULL,
	idSucursal INT,

	CONSTRAINT FK_idSucursal FOREIGN KEY (idSucursal) REFERENCES Sucursal(idSucursal)
);

CREATE TABLE Turno (
	idDisponibilidad INT PRIMARY KEY identity(1,1),
	idAgente INT,
	FechaHoraDisponible TIME NOT NULL,
	idTipoTurno INT,
	EstaDisponibleTurno BIT NOT NULL DEFAULT(0),
	idCliente int,
	idAuto int,
	CONSTRAINT FK_idAuto FOREIGN KEY (idAuto) REFERENCES Autos(idAuto),
	CONSTRAINT FK_idCliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
	CONSTRAINT FK_idAgente FOREIGN KEY (idAgente) REFERENCES Agente(idAgente),
	CONSTRAINT FK_idTipoTurno FOREIGN KEY (idTipoTurno) REFERENCES TipoTurno(idTipoTurno)
);



CREATE TABLE Autos (
	idAuto INT PRIMARY KEY identity(1,1),
	Marca VARCHAR(50) NOT NULL,
	Modelo VARCHAR(50) NOT NULL,
	Km int NOT NULL,
	Año INT NOT NULL,
	idSucursal int,
	CONSTRAINT FK_idSucursal2 FOREIGN KEY (idSucursal) REFERENCES Sucursal(idSucursal),

);


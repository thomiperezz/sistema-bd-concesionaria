
CREATE PROCEDURE InsertarSucursal
       @Nombre        VARCHAR(50)   , 
       @Direccion       VARCHAR(50)  , 
       @Telefono       VARCHAR(50) 
AS 
BEGIN
insert into Sucursal (NombreSucursal,Direccion,TelefonoSucursal) values (@nombre,@Direccion,@Telefono)
end

exec InsertarSucursal 'Lomas De Zamora','Talcahuano 710','111111' 
exec InsertarSucursal 'Banfield','Migueletes 10','211111' 
exec InsertarSucursal 'Monserrat','Lima 710','311111' 
exec InsertarSucursal 'Retiro','AV. libertador 1','411111' 
exec InsertarSucursal 'Campana','Siempreviva 123','611111' 
exec InsertarSucursal 'Lanus','Talcahuano 777','711111' 
exec InsertarSucursal 'Flores','Antezana 710','811111' 
exec InsertarSucursal 'Florida','Panamericana km10','911111' 
exec InsertarSucursal 'Florida','Panamericana km20','9911111' 
exec InsertarSucursal 'Constitucion','Suipacha 710','9991111' 
exec InsertarSucursal 'Retiro','9 de julio 100','99111' 
exec InsertarSucursal 'Monserrat','9 de julio 1000','121111' 

CREATE PROCEDURE InsertarAgente
       @Nombre        VARCHAR(50)   , 
       @Apellido       VARCHAR(50)  , 
       @Sucursal       int 
AS 
BEGIN
insert into Agente (NombreAgente,ApellidoAgente,idSucursal) values (@nombre,@Apellido,@Sucursal)
end

exec InsertarAgente 'Lionel','Messi',10
exec InsertarAgente 'Franco', 'Armani', 9
exec InsertarAgente 'Emiliano', 'Martínez', 3
exec InsertarAgente 'Gerónimo', 'Rulli', 5
exec InsertarAgente 'Cristian', 'Romero', 7
exec InsertarAgente 'Nicolás', 'Otamendi', 11
exec InsertarAgente 'Germán', 'Pezzella', 2
exec InsertarAgente 'Nicolás', 'Tagliafico', 4
exec InsertarAgente 'Marcos', 'Acuña', 8
exec InsertarAgente 'Nahuel', 'Molina', 1
exec InsertarAgente 'Lucas', 'Martínez Quarta', 10
exec InsertarAgente 'Gonzalo', 'Montiel', 6
exec InsertarAgente 'Lisandro', 'Martínez', 12
exec InsertarAgente 'Leonardo', 'Balerdi', 3
exec InsertarAgente 'Valentín', 'Barco', 5
exec InsertarAgente 'Ángel', 'Di María', 7
exec InsertarAgente 'Leandro', 'Paredes', 9
exec InsertarAgente 'Rodrigo', 'De Paul', 2
exec InsertarAgente 'Giovani', 'Lo Celso', 8
exec InsertarAgente 'Guido', 'Rodríguez', 4
exec InsertarAgente 'Exequiel', 'Palacios', 6
exec InsertarAgente 'Alexis', 'Mac Allister', 1
exec InsertarAgente 'Enzo', 'Fernández', 11
exec InsertarAgente 'Valentin', 'Carboni', 10
exec InsertarAgente 'Nicolás', 'González', 5
exec InsertarAgente 'Ángel', 'Correa', 3
exec InsertarAgente 'Lautaro', 'Martínez', 12
exec InsertarAgente 'Julián', 'Álvarez', 7
exec InsertarAgente 'Alejandro', 'Garnacho', 2

CREATE PROCEDURE InsertarTipoTurno
       @tipo       varchar(30)  , 
       @Subtipo       VARCHAR(50)  , 
       @Duracion       int 
AS 
BEGIN
insert into TipoTurno (TipoTurno,SubtipoTurno,DuracionTurno) values (@tipo,@Subtipo,@Duracion)
end
go


exec InsertarTipoTurno 'Compra','Inspeccion',30
exec InsertarTipoTurno 'Compra','Toma',60
exec InsertarTipoTurno 'Venta','Visita',30
exec InsertarTipoTurno 'Venta','Entrega',60


CREATE PROCEDURE InsertarAutos
    @Marca VARCHAR(50),
	@Modelo VARCHAR(50),
	@km VARCHAR(50),
	@año VARCHAR(50),
	@idSucursal VARCHAR(50)
AS 
BEGIN
INSERT INTO Autos (Marca,Modelo,Km,Año,idSucursal) Values (@Marca,@Modelo,@km,@año,@idSucursal)
end
go


EXEC InsertarAutos 'Volkswagen', 'Golf', 0, 2024, 5;
EXEC InsertarAutos 'Toyota', 'Corolla', 5000, 2015, 8;
EXEC InsertarAutos 'Ford', 'Mustang', 25000, 2012, 3;
EXEC InsertarAutos 'Honda', 'Civic', 120000, 2019, 10;
EXEC InsertarAutos 'Chevrolet', 'Camaro', 0, 2024, 1;
EXEC InsertarAutos 'Hyundai', 'Elantra', 80000, 2018, 6;
EXEC InsertarAutos 'BMW', '3 Series', 45000, 2013, 9;
EXEC InsertarAutos 'Mercedes-Benz', 'C-Class', 60000, 2007, 4;
EXEC InsertarAutos 'Audi', 'A4', 20000, 2016, 7;
EXEC InsertarAutos 'Lexus', 'RX', 70000, 2009, 2;
EXEC InsertarAutos 'Subaru', 'Outback', 10000, 2014, 11;
EXEC InsertarAutos 'Nissan', 'Altima', 180000, 2011, 5;
EXEC InsertarAutos 'Kia', 'Sorento', 90000, 2017, 8;
EXEC InsertarAutos 'Mazda', 'CX-5', 35000, 2010, 3;
EXEC InsertarAutos 'Jeep', 'Grand Cherokee', 60000, 2019, 10;
EXEC InsertarAutos 'Dodge', 'Ram', 0, 2023, 1;
EXEC InsertarAutos 'Chrysler', '300', 150000, 2013, 6;
EXEC InsertarAutos 'Buick', 'Enclave', 70000, 2018, 9;
EXEC InsertarAutos 'Cadillac', 'Escalade', 40000, 2007, 4;
EXEC InsertarAutos 'Dodge', 'Ram', 55000, 2016, 7;
EXEC InsertarAutos 'Toyota', 'Corolla', 5000, 2015, 8;
EXEC InsertarAutos 'Mazda', 'CX-5', 35000, 2010, 3;
EXEC InsertarAutos 'Honda', 'Civic', 120000, 2019, 10;
EXEC InsertarAutos 'Audi', 'A4', 20000, 2016, 7;
EXEC InsertarAutos 'Volkswagen', 'Golf', 15000, 2008, 5;
EXEC InsertarAutos 'Chevrolet', 'Camaro', 0, 2024, 1;
EXEC InsertarAutos 'Ford', 'Mustang', 25000, 2012, 3;
EXEC InsertarAutos 'Hyundai', 'Elantra', 80000, 2018, 6;
EXEC InsertarAutos 'Lexus', 'RX', 70000, 2009, 2;
EXEC InsertarAutos 'Subaru', 'Outback', 10000, 2014, 11;
EXEC InsertarAutos 'BMW', '3 Series', 45000, 2013, 9;
EXEC InsertarAutos 'Mercedes-Benz', 'C-Class', 60000, 2007, 4;
EXEC InsertarAutos 'Audi', 'A4', 20000, 2016, 7;
EXEC InsertarAutos 'Jeep', 'Grand Cherokee', 60000, 2019, 10;
EXEC InsertarAutos 'Toyota', 'Corolla', 5000, 2015, 8;
EXEC InsertarAutos 'Honda', 'Civic', 120000, 2019, 10;
EXEC InsertarAutos 'Chevrolet', 'Camaro', 30000, 2005, 1;
EXEC InsertarAutos 'Volkswagen', 'Golf', 15000, 2008, 5;
EXEC InsertarAutos 'Ford', 'Mustang', 25000, 2012, 3;
EXEC InsertarAutos 'Hyundai', 'Elantra', 80000, 2018, 6;
EXEC InsertarAutos 'BMW', '3 Series', 45000, 2013, 9;
EXEC InsertarAutos 'Audi', 'A4', 20000, 2016, 7;
EXEC InsertarAutos 'Lexus', 'RX', 70000, 2009, 2;
EXEC InsertarAutos 'Subaru', 'Outback', 0, 2024, 11;
EXEC InsertarAutos 'Nissan', 'Altima', 0, 2024, 5;
EXEC InsertarAutos 'Kia', 'Sorento', 0, 2023, 8;
EXEC InsertarAutos 'Mazda', 'CX-5', 0, 2020, 3;
EXEC InsertarAutos 'Jeep', 'Grand Cherokee', 0, 2023, 10;
EXEC InsertarAutos 'Dodge', 'Ram', 0, 2021, 1;
EXEC InsertarAutos 'Chrysler', '300', 0, 2023, 6;
EXEC InsertarAutos 'Buick', 'Enclave', 0, 2024, 9;
EXEC InsertarAutos 'Cadillac', 'Escalade', 0, 2024, 4;
EXEC InsertarAutos 'GMC', 'Sierra', 0, 2022, 7;

CREATE PROCEDURE InsertarCliente
    @ApellidoCliente VARCHAR(50),
	@NombreCliente VARCHAR(50),
	@DNI VARCHAR(50),
	@TelefonoCliente VARCHAR(50),
	@Correo VARCHAR(50)
AS 
BEGIN
INSERT INTO cliente (ApellidoCliente,NombreCliente,DNI,TelefonoCliente,Correo) VALUES
(@ApellidoCliente,@NombreCliente,@DNI,@TelefonoCliente,@Correo)
end
go

exec InsertarCliente 'Pepito','Juan','40000000','4444-4444','corregenerico@gmail.com';
EXEC InsertarCliente 'González','Diego','12345678','1555123456','diego.gonzalez@gmail.com';
EXEC InsertarCliente 'Silva','Camila','23456789','1555234567','camila.silva@yahoo.com';
EXEC InsertarCliente 'Martínez','Mateo','34567890','1555345678','mateo.martinez@hotmail.com';
EXEC InsertarCliente 'Pereira','Valentina','45678901','1555456789','valentina.pereira@outlook.com';
EXEC InsertarCliente 'Fernández','Lucas','56789012','1555567890','lucas.fernandez@gmail.com';
EXEC InsertarCliente 'Rodríguez','Sofía','67890123','1555678901','sofia.rodriguez@yahoo.com';
EXEC InsertarCliente 'López','Matías','78901234','1555789012','matias.lopez@hotmail.com';
EXEC InsertarCliente 'García','Isabella','89012345','1555890123','isabella.garcia@outlook.com';
EXEC InsertarCliente 'Martins','Gabriel','90123456','1555901234','gabriel.martins@gmail.com';
EXEC InsertarCliente 'Ferreira','Ana','01234567','1555012345','ana.ferreira@yahoo.com';
EXEC InsertarCliente 'Vargas','Thiago','87654321','1555987654','thiago.vargas@hotmail.com';
EXEC InsertarCliente 'Machado','Emily','76543210','1555876543','emily.machado@outlook.com';
EXEC InsertarCliente 'Ribeiro','Lucas','65432109','1555765432','lucas.ribeiro@gmail.com';
EXEC InsertarCliente 'Almeida','Julia','54321098','1555654321','julia.almeida@yahoo.com';
EXEC InsertarCliente 'Costa','Gabriel','43210987','1555543210','gabriel.costa@hotmail.com';
EXEC InsertarCliente 'Santos','Valentina','32109876','1555432109','valentina.santos@outlook.com';
EXEC InsertarCliente 'Souza','Pedro','21098765','1555321098','pedro.souza@gmail.com';
EXEC InsertarCliente 'Oliveira','Luiza','09876543','1555210987','luiza.oliveira@yahoo.com';
EXEC InsertarCliente 'Pereyra','Joaquín','98765432','1555098765','joaquin.pereyra@hotmail.com';
EXEC InsertarCliente 'Lima','Mariana','87654321','1555987654','mariana.lima@gmail.com';



CREATE PROCEDURE InsertarTurno
       @id       varchar(30)  , 
       @Fecha        time , 
       @tipo      VARCHAR(50) ,
AS 
BEGIN
insert into Turno (idAgente,FechaHoraDisponible,idTipoTurno) values (@id,@Fecha,@tipo)
end
go

-- Agent 1
exec InsertarTurno 1,'09:00',97
exec InsertarTurno 1,'11:00',98
exec InsertarTurno 1,'13:30',99
exec InsertarTurno 1,'15:30',100

-- Agent 2
exec InsertarTurno 2,'09:30',100
exec InsertarTurno 2,'12:30',97
exec InsertarTurno 2,'15:00',98

-- Agent 3
exec InsertarTurno 3,'10:00',97
exec InsertarTurno 3,'12:00',98
exec InsertarTurno 3,'14:30',99
exec InsertarTurno 3,'16:30',100

-- Agent 4
exec InsertarTurno 4,'09:00',98
exec InsertarTurno 4,'11:30',97
exec InsertarTurno 4,'14:00',99
exec InsertarTurno 4,'16:00',100
exec InsertarTurno 4,'17:30',98

-- Agent 5
exec InsertarTurno 5,'10:00',97
exec InsertarTurno 5,'12:30',98
exec InsertarTurno 5,'15:00',99

-- Agent 6
exec InsertarTurno 6,'09:30',97
exec InsertarTurno 6,'11:00',98
exec InsertarTurno 6,'13:30',99
exec InsertarTurno 6,'16:00',100

-- Agent 7
exec InsertarTurno 7,'10:00',99
exec InsertarTurno 7,'13:00',97
exec InsertarTurno 7,'15:30',98

-- Agent 8
exec InsertarTurno 8,'09:30',97
exec InsertarTurno 8,'12:00',98
exec InsertarTurno 8,'14:30',99
exec InsertarTurno 8,'17:00',100

-- Agent 9
exec InsertarTurno 9,'10:00',97
exec InsertarTurno 9,'12:30',98
exec InsertarTurno 9,'15:00',99
exec InsertarTurno 9,'16:30',100

-- Agent 10
exec InsertarTurno 10,'09:30',100
exec InsertarTurno 10,'11:00',97
exec InsertarTurno 10,'13:30',98
exec InsertarTurno 10,'15:00',99

-- Agent 11
exec InsertarTurno 11,'09:00',97
exec InsertarTurno 11,'12:00',98
exec InsertarTurno 11,'14:30',99

-- Agent 12
exec InsertarTurno 12,'10:00',97
exec InsertarTurno 12,'13:00',98
exec InsertarTurno 12,'15:30',99
exec InsertarTurno 12,'17:00',100

-- Agent 13
exec InsertarTurno 13,'09:30',97
exec InsertarTurno 13,'11:00',98
exec InsertarTurno 13,'13:30',99
exec InsertarTurno 13,'16:00',100

-- Agent 14
exec InsertarTurno 14,'09:00',98
exec InsertarTurno 14,'12:00',97
exec InsertarTurno 14,'14:30',99
exec InsertarTurno 14,'17:00',100

-- Agent 15
exec InsertarTurno 15,'10:00',97
exec InsertarTurno 15,'11:30',98
exec InsertarTurno 15,'15:00',99

-- Agent 16
exec InsertarTurno 16,'09:30',97
exec InsertarTurno 16,'12:00',98
exec InsertarTurno 16,'13:30',99
exec InsertarTurno 16,'16:00',100

-- Agent 17
exec InsertarTurno 17,'09:00',100
exec InsertarTurno 17,'11:30',97
exec InsertarTurno 17,'14:00',98

-- Agent 18
exec InsertarTurno 18,'10:00',97
exec InsertarTurno 18,'12:30',98
exec InsertarTurno 18,'15:00',99
exec InsertarTurno 18,'16:30',100

-- Agent 19
exec InsertarTurno 19,'09:30',97
exec InsertarTurno 19,'11:00',98
exec InsertarTurno 19,'13:30',99
exec InsertarTurno 19,'15:00',100

-- Agent 20
exec InsertarTurno 20,'09:00',97
exec InsertarTurno 20,'12:00',98
exec InsertarTurno 20,'14:30',99

-- Agent 21
exec InsertarTurno 21,'10:00',97
exec InsertarTurno 21,'11:30',98
exec InsertarTurno 21,'15:00',99
exec InsertarTurno 21,'16:30',100

-- Agent 22
exec InsertarTurno 22,'09:30',97
exec InsertarTurno 22,'12:00',98
exec InsertarTurno 22,'13:30',99

-- Agent 23
exec InsertarTurno 23,'09:00',97
exec InsertarTurno 23,'11:30',98
exec InsertarTurno 23,'14:00',99

-- Agent 24
exec InsertarTurno 24,'10:00',97
exec InsertarTurno 24,'12:30',98
exec InsertarTurno 24,'15:00',99
exec InsertarTurno 24,'16:30',100

-- Agent 25
exec InsertarTurno 25,'09:30',100
exec InsertarTurno 25,'11:00',97
exec InsertarTurno 25,'13:30',98

-- Agent 26
exec InsertarTurno 26,'09:00',99
exec InsertarTurno 26,'12:00',97
exec InsertarTurno 26,'14:30',98
exec InsertarTurno 26,'16:00',99

-- Agent 27
exec InsertarTurno 27,'10:00',100
exec InsertarTurno 27,'11:30',98
exec InsertarTurno 27,'15:00',97

-- Agent 28
exec InsertarTurno 28,'09:30',97
exec InsertarTurno 28,'12:00',99
exec InsertarTurno 28,'13:30',98

-- Agent 29
exec InsertarTurno 29,'09:00',98
exec InsertarTurno 29,'11:30',100
exec InsertarTurno 29,'14:00',99
exec InsertarTurno 29,'16:30',97
go

update Turno
set idCliente ='2',EstaDisponibleTurno='1'
where idDisponibilidad='2'

UPDATE Turno
SET idCliente = '2', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 49;

UPDATE Turno
SET idCliente = '7', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 13;

UPDATE Turno
SET idCliente = '15', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 84;

UPDATE Turno
SET idCliente = '10', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 95;

UPDATE Turno
SET idCliente = '18', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 27;

UPDATE Turno
SET idCliente = '5', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 54;

UPDATE Turno
SET idCliente = '12', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 82;

UPDATE Turno
SET idCliente = '3', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 18;

UPDATE Turno
SET idCliente = '6', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 88;

UPDATE Turno
SET idCliente = '20', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 42;

UPDATE Turno
SET idCliente = '17', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 5;

UPDATE Turno
SET idCliente = '8', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 76;

UPDATE Turno
SET idCliente = '4', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 61;

UPDATE Turno
SET idCliente = '11', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 66;

UPDATE Turno
SET idCliente = '2', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 39;

UPDATE Turno
SET idCliente = '19', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 33;

UPDATE Turno
SET idCliente = '13', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 17;

UPDATE Turno
SET idCliente = '9', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 24;

UPDATE Turno
SET idCliente = '16', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 71;

UPDATE Turno
SET idCliente = '14', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 80;

UPDATE Turno
SET idCliente = '7', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 72;

UPDATE Turno
SET idCliente = '10', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 11;

UPDATE Turno
SET idCliente = '1', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 48;

UPDATE Turno
SET idCliente = '18', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 19;

UPDATE Turno
SET idCliente = '5', EstaDisponibleTurno = '1'
WHERE idDisponibilidad = 89;


UPDATE turno
SET idAuto = 20
WHERE idDisponibilidad=5;

UPDATE turno
SET idAuto = 35
WHERE idDisponibilidad=24;

UPDATE turno
SET idAuto = 24
WHERE idDisponibilidad=54;

UPDATE turno
SET idAuto = 26
WHERE idDisponibilidad=61;

UPDATE turno
SET idAuto = 36
WHERE idDisponibilidad=72;

UPDATE turno
SET idAuto = 44
WHERE idDisponibilidad=89;
go

create procedure CambiarSucursalDelAgente 
@id int,
@idSucursal int
as begin update Agente
set idSucursal=@idSucursal
where idAgente=@id
end
go

create procedure CambiarSucursalDelAauto 
@id int,
@idSucursal int
as begin update Autos
set idSucursal=@idSucursal
where idAuto=@id
end
go

create procedure ModificarContactoCliente 
@id int,
@Telefono varchar (30),
@correo varchar (30)
as begin update Cliente
set TelefonoCliente=@Telefono,Correo=@correo
where idCliente=@id
end
go

create procedure CambiarTelefonoSucursal
@id int,
@Telefono varchar (30),
@correo varchar (30)
as begin update Sucursal
set TelefonoSucursal=@Telefono
where idSucursal=@id
end
go

create procedure CambiarDuracionTurno
@id int,
@Duracion int
as begin update TipoTurno
set DuracionTurno=@Duracion
where idTipoTurno=@id
end
go

create procedure OcuparTurno
@id int,
@idC int,
@auto int =null
as begin update Turno
set EstaDisponibleTurno=1,idCliente=@idC,idAuto=@auto
where idDisponibilidad=@id
end
go

create procedure BorrarAgente
@id int
as begin delete from agente
where idAgente=@id
end 
go

create procedure BorrarAuto
@id int
as begin delete from Autos
where idauto=@id
end 
go

create procedure BorrarCliente
@id int
as begin delete from Cliente
where idcliente=@id
end 
go

create procedure Borrarsucursal
@id int
as begin delete from Sucursal
where idSucursal=@id
end 
go

create procedure BorrarTurno
@id int
as begin delete from Turno
where idDisponibilidad=@id
end 
go

create procedure BorrarAgente
@id int
as begin delete from agente
where idAgente=@id
end 
go


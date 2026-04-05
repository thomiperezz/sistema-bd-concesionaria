

--- Compradores de coche y coche a comprar
select c.nombrecliente +' '+c.apellidocliente as Compradores, a.marca+' '+a.Modelo as Coche from Turno t
join cliente c on c.idCliente=t.idCliente
join autos a on a.idAuto=t.idAuto

---Turnos libres x sucursal
select s.NombreSucursal as 'Nombre Sucursal',s.Direccion,count(*) as 'Turnos Libres' from sucursal s
join agente a on a.idSucursal=s.idSucursal
join turno t on t.idAgente=a.idAgente
where EstaDisponibleTurno=0
group by NombreSucursal,Direccion;

---Autos por sucursal
select s.NombreSucursal as 'Nombre Sucursal',s.Direccion,count(*) as 'Autos' from sucursal s
join autos a on a.idSucursal=s.idSucursal
group by NombreSucursal,Direccion;

---Km promedio de los autos usados
select AVG(km) as 'Promedio de km de autos usados' from autos
where km>0;

--- Cantidad de turnos de cada tipo
select tt.tipoTurno +'-'+tt.SubtipoTurno as 'Tipo de turno' ,count( tipoTurno +'-'+SubtipoTurno) as 'Cantidad de turnos' from turno t
join TipoTurno tt on t.idTipoTurno=tt.idTipoTurno
group by tt.SubtipoTurno,tt.TipoTurno

---Cantidad de turnos de cada tipo libres
select tt.tipoTurno +'-'+tt.SubtipoTurno as 'Tipo de turno' ,count( tipoTurno +'-'+SubtipoTurno) as 'Cantidad de turnos' from turno t
join TipoTurno tt on t.idTipoTurno=tt.idTipoTurno
where t.EstaDisponibleTurno = 0
group by tt.SubtipoTurno,tt.TipoTurno;

--- Agentes que NO tienen turnos disponibles
select a.idAgente from agente a
join Turno t on t.idAgente=a.idAgente
where EstaDisponibleTurno=1
except select a.idAgente from agente a
join Turno t on t.idAgente=a.idAgente
where EstaDisponibleTurno=0  ;

--- Agentes que tienen TODOS los turnos disponibles
select a.idAgente as 'Agente' from agente a
join Turno t on t.idAgente=a.idAgente
where EstaDisponibleTurno=0
except select a.idAgente from agente a
join Turno t on t.idAgente=a.idAgente
where EstaDisponibleTurno=1  ;

---Autos 0km x sucursal
select s.NombreSucursal as 'Sucursal',s.Direccion ,count(*) as 'Autos 0km' from autos a
join Sucursal s on s.idSucursal=a.idSucursal
where km=0
group by s.NombreSucursal,s.Direccion
order by 'Autos 0km' desc

--- Sucursal de atencion de cada cliente
select c.nombrecliente +' '+c.apellidocliente as Cliente,s.NombreSucursal from sucursal s
join agente a on a.idSucursal=s.idSucursal
join turno t on t.idAgente=a.idAgente
join cliente c on c.idCliente=t.idCliente
order by Cliente

---Agente que atiende a dni 01234567
select a.NombreAgente +' '+a.ApellidoAgente as Agente from turno t
join Agente a on a.idAgente=t.idAgente
join Cliente c on t.idCliente=c.idCliente
where c.dni = 01234567;

--- Auto con mas Kilometros
select  Marca,Modelo,Año,km from autos
where km= (select max(km) from autos);

--- Compradores de autos usados
select c.nombrecliente +' '+c.apellidocliente as Compradores, a.marca+' '+a.Modelo as Coche, a.km from Turno t
join cliente c on c.idCliente=t.idCliente
join autos a on a.idAuto=t.idAuto
where a.km >0;

---Clientes que se atienden en sucursales que quedan sobre la 9 de julio
select c.nombrecliente +' '+c.apellidocliente as Cliente,s.NombreSucursal, S.Direccion, t.FechaHoraDisponible as 'Horario del turno' from sucursal s
join agente a on a.idSucursal=s.idSucursal
join turno t on t.idAgente=a.idAgente
join cliente c on c.idCliente=t.idCliente
where s.Direccion like '%9 de julio%'
order by s.NombreSucursal

--- Turnos disponibles antes de las 12hs
select a.NombreAgente +' '+a.ApellidoAgente as Agente,FechaHoraDisponible as Horario, tt.SubtipoTurno as 'Tipo de turno',s.NombreSucursal from turno t
join agente a on a.idAgente=t.idAgente
join TipoTurno tt on tt.idTipoTurno=t.idTipoTurno
join Sucursal s on s.idSucursal=A.idSucursal
where t.FechaHoraDisponible<'12:00'
order by FechaHoraDisponible;

--- Sucursal con mas km en total de sus autos usados
select s.NombreSucursal as 'Nombre Sucursal',sum(km) as 'Suma de km de autos usados' from autos a
join sucursal s on s.idSucursal=a.idsucursal
group by s.idSucursal,s.NombreSucursal
having sum(km)=(select max(kmTotales) as Totales from  (select s.NombreSucursal,sum(km) as kmTotales from autos a
join sucursal s on s.idSucursal=a.idsucursal
group by s.idSucursal,s.NombreSucursal) as TotalesxSucursal);

--- Sucursal con menos km en total de sus autos usados
select s.NombreSucursal as 'Nombre Sucursal',sum(km) as 'Suma de km de autos usados' from autos a
join sucursal s on s.idSucursal=a.idsucursal
group by s.idSucursal,s.NombreSucursal
having sum(km)=(select min(kmTotales) as Totales from  (select s.NombreSucursal,sum(km) as kmTotales from autos a
join sucursal s on s.idSucursal=a.idsucursal
group by s.idSucursal,s.NombreSucursal) as TotalesxSucursal);

--- Agentes que tienen un turno para vender un auto
select a.NombreAgente +' '+a.ApellidoAgente as Agente from agente a
join Turno t on t.idAgente=a.idAgente
join autos au on au.idAuto=t.idauto

--- Sucursales que tinen turno de compra-Toma de auto
select s.NombreSucursal as 'Nombre Sucursal',a.NombreAgente +' '+a.ApellidoAgente as Agente , tt.TipoTurno,c.nombrecliente +' '+c.apellidocliente as Cliente  from Turno t
join Agente a on a.idAgente=t.idAgente
join Sucursal s on s.idSucursal=a.idSucursal
join TipoTurno tt on tt.idTipoTurno=t.idTipoTurno
join Cliente c on c.idCliente=t.idCliente
where EstaDisponibleTurno=1
and tt.SubtipoTurno='Toma'
order by idDisponibilidad;

--- sucursales que atiendan clientes con direccion de mail yahoo
select s.NombreSucursal as 'Nombre Sucursal',a.NombreAgente +' '+a.ApellidoAgente as Agente ,c.nombrecliente +' '+c.apellidocliente as Cliente,c.Correo from Agente a
join turno t on a.idAgente=t.idAgente
join Sucursal s on s.idSucursal=a.idSucursal
join Cliente c on c.idCliente=t.idCliente
where c.Correo like '%@yahoo.com'

---Porcentaje de turnos que empiezan "y media"
select (select count(*) from agente a
join turno t on a.idAgente=t.idagente
where FechaHoraDisponible like '__:3%') as 'Turnos que empiezan XX:30',
(select count(*) from agente a
join turno t on a.idAgente=t.idagente
where FechaHoraDisponible like '__:3%'
and EstaDisponibleTurno=1) as 'Turnos ocupados que empiezan XX:30',
(select (100/(select convert(float, COUNT(*)) from agente a
join turno t on a.idAgente=t.idagente
where FechaHoraDisponible like '__:3%'))*
(select convert(float, COUNT(*)) from agente a
join turno t on a.idAgente=t.idagente
where FechaHoraDisponible like '__:3%'
and EstaDisponibleTurno=1) as  Porcentaje) as 'Porcentaje de turnos que empiezan XX:30 y estan ocupados';

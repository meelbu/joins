create database supermercadoSA;

use supermercadoSA;

create table sucursal(
id int,
nombre varchar(15) not null, 
direccion varchar(25) not null,
primary key(id)
);

create table empleado(
idEmpleado int not null,
nombre varchar(15) not null,
idSucursal int,

foreign key(idSucursal) references sucursal(id),
primary key(idEmpleado)
);

insert into sucursal(id, nombre, direccion)
values 
(1,'Fincas del sol','Monteagudo 325'),
(2,'Luz divina','Canada 56'),
(3,'La Victoria','Alberdi 2369'),
(4,'Amor','Figueredo 23');

insert into empleado(idEmpleado, nombre, idSucursal)
values
(1,'Juan Manuel',2),
(2,'Viviana',1),
(3,'Malena',3),
(4,'Francisco',4),
(5,'Lisandro',4);

select * from sucursal;

select * from empleado;

select *from
empleado E 
join sucursal F
on E.idSucursal = F.id;

select 
E.nombre as 'Empleado',
F.nombre as 'Sucursal'
from empleado E 
left join sucursal F
on E.idSucursal = F.id;

select 
E.nombre as 'Empleado',
F.nombre as 'Sucursal'
from empleado E 
right join sucursal F
on E.idSucursal = F.id;

select 
E.nombre as 'Empleado',
F.nombre as 'Sucursal'
from empleado E 
 join sucursal F
on E.idSucursal = F.id where id > 3;

select 
E.nombre as 'Empleado',
F.nombre as 'Sucursal'
from empleado E 
join sucursal F
on E.idSucursal = F.id where E.nombre like 'A%';








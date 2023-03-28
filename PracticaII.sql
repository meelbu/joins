create database Sucursal_A;

use Sucursal_A;

create table cliente(
id_Cliente int,
Nombre varchar(15) not null,
Apellido varchar(25) not null,
primary key(id_Cliente)
);

create table pedidos(
id_pedido int not null,
id_cliente int,
Fecha date not null,

foreign key(id_cliente) references cliente(id_Cliente),
primary key(id_pedido)
);

insert into cliente(id_Cliente, Nombre, Apellido)
values
(1,'Hector','Gonzalez'),
(2,'Nancy','Ruiz'),
(3,'Paola','Vergara'),
(4,'Maximiliano','Castro'),
(5,'Micaela','Castaña');

insert into pedidos(id_pedido, id_Cliente, Fecha)
values
(1,2,'2023-01-11'),
(2,5,'2023-01-25'),
(3,2,'2023-02-03'),
(4,4,'2023-03-05'),
(5,1,'2023-03-10'),
(6,2,'2023-03-25');

select * from cliente;

select * from pedidos;

select 
E.Nombre, E.Apellido,
F.Fecha 
from cliente E 
join pedidos F
on E.id_Cliente = F.id_pedido where month(F.Fecha) = '01';

create table tienda(
id_tienda int primary key,
nombre varchar(50),
direccion varchar(50)
);

create table productos(
id_producto int not null,
id_Tienda int,
nombre varchar(20),
precio int,

foreign key(id_Tienda) references tienda(id_tienda),
primary key(id_producto)
);

insert into tienda(id_tienda, nombre, direccion)
values
(1,'Ser de Luz','Ayolas 2053'),
(2,'Venecia','Recondo 25'),
(3,'La Victoria','Baradero 236'),
(4,'Los amigos','Francia 21');

insert into productos(id_producto, id_Tienda, nombre, precio)
values
(7,4,'Fideos',200),
(11,2,'Jabon',150),
(10,1,'Arroz',100),
(8,3,'Jamon',300),
(5,1,'Pasta dental',200),
(12,4,'Papas fritas',350);

select * from tienda;

select * from productos;


select concat(T.nombre, ' - ' , T.direccion) as 'Tiendas',
P.precio 
from tienda T
join productos P 
on T.id_Tienda = P.id_tienda
 where P.precio > 100;



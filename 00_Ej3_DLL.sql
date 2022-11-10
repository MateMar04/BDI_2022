drop database if exists CADENA;
create database CADENA;
use CADENA;

create table FABRICAS
(
    cuit         bigint primary key,
    razon_social varchar(30),
    telefono     bigint,
    direccion    varchar(50)
);

create table EMPLEADOS
(
    legajo int AUTO_INCREMENT primary key,
    dni    bigint,
    nombre varchar(50)
);

create table SUCURSALES
(
    numero    int AUTO_INCREMENT primary key,
    direccion varchar(40),
    ciudad    varchar(40)
);

create table CLIENTES
(
    codigo           int AUTO_INCREMENT primary key,
    dni              bigint,
    fecha_nacimiento date,
    nombre           varchar(40),
    id_sucursal      int,
    constraint `cliente->sucursal` foreign key (id_sucursal) references SUCURSALES (numero)
);

create table TARJETAS
(
    numero           bigint primary key,
    banco            varchar(30),
    codigo_seguridad int,
    vencimiento      date,
    id_duenio        int,
    constraint `tarjeta->cliente` foreign key (id_duenio) references CLIENTES (codigo)
);

create table DOMICILIOS
(
    id          int AUTO_INCREMENT primary key,
    id_empleado int,
    calle       varchar(30),
    altura      int,
    ciudad      varchar(30),
    constraint `domicilio->empleado` foreign key (id_empleado) references EMPLEADOS (legajo)
);

create table TELEFONOS
(
    id         int AUTO_INCREMENT primary key,
    id_cliente int,
    telefono   bigint,
    constraint `telefono->cliente` foreign key (id_cliente) references CLIENTES (codigo)
);

create table PRODUCTOS
(
    codigo       int AUTO_INCREMENT primary key,
    descripccion text,
    costo        int,
    id_fabrica   bigint,
    constraint `producto->fabrica` foreign key (id_fabrica) references FABRICAS (cuit)
);

create table VENTAS
(
    id          int AUTO_INCREMENT primary key,
    cantidad    int,
    precio      int,
    id_producto int,
    id_sucursal int,
    constraint `venta->producto` foreign key (id_producto) references PRODUCTOS (codigo),
    constraint `venta->sucursal` foreign key (id_sucursal) references SUCURSALES (numero)
);

create table COMPRAS
(
    id          int AUTO_INCREMENT primary key,
    id_sucursal int,
    id_cliente  int,
    constraint `compra->sucursal` foreign key (id_sucursal) references SUCURSALES (numero),
    constraint `compra->cliente` foreign key (id_cliente) references CLIENTES (codigo)
);

insert into FABRICAS(cuit, razon_social, telefono, direccion)
values (20459344730, 'MATEO SRL', 3513497968, 'Loncoche 8136');

insert into FABRICAS(cuit, razon_social, telefono, direccion)
values (20459344731, 'MATEO SA', 3513497969, 'Loncoche 8137');

insert into FABRICAS(cuit, razon_social, telefono, direccion)
values (20459344732, 'ELVIO SRL', 3513497970, 'Loncoche 8138');

insert into FABRICAS(cuit, razon_social, telefono, direccion)
values (20459344733, 'ELVIO SA', 3513497971, 'Loncoche 8139');

insert into FABRICAS(cuit, razon_social, telefono, direccion)
values (20459344734, 'PEDRO SRL', 3513497971, 'Loncoche 8140');

insert into EMPLEADOS(dni, nombre)
values (45934473, 'MATEO MARCHISONE');

insert into EMPLEADOS(dni, nombre)
values (20764579, 'ELVIO MARCHISONE');

insert into EMPLEADOS(dni, nombre)
values (45934474, 'FERNANDO ALONSO');

insert into EMPLEADOS(dni, nombre)
values (20764578, 'ROGELIO AGUAS');

insert into EMPLEADOS(dni, nombre)
values (45934475, 'CARLOS SAINZ');

insert into SUCURSALES(direccion, ciudad)
values ('Av. Argentina 2000', 'Villa Allende');

insert into SUCURSALES(direccion, ciudad)
values ('Enrique Boderau 1500', 'Cordoba');

insert into SUCURSALES(direccion, ciudad)
values ('Av. Donato Alvares 1000', 'Cordoba');

insert into SUCURSALES(direccion, ciudad)
values ('Av. Ricardo Rojas 500', 'Cordoba');

insert into SUCURSALES(direccion, ciudad)
values ('Av. Rafael Nuniez 100', 'Cordoba');

insert into CLIENTES (dni, fecha_nacimiento, nombre, id_sucursal)
values (45934473, '2004/09/14', 'Mateo Marchisone', 1);

insert into CLIENTES (dni, fecha_nacimiento, nombre, id_sucursal)
values (45934474, '2004/09/15', 'Lorenzo Galaverna', 1);

insert into CLIENTES (dni, fecha_nacimiento, nombre, id_sucursal)
values (45934475, '2004/09/16', 'Santiago Carranza', 2);

insert into CLIENTES (dni, fecha_nacimiento, nombre, id_sucursal)
values (45934476, '2004/09/17', 'Jose Urtubey', 3);

insert into CLIENTES (dni, fecha_nacimiento, nombre, id_sucursal)
values (45934477, '2004/09/18', 'Guillermo Andino', 4);

insert into TARJETAS(numero, banco, codigo_seguridad, vencimiento, id_duenio)
values (1234123412341234, 'Macro', 123, '2030/01/01', 1);

insert into TARJETAS(numero, banco, codigo_seguridad, vencimiento, id_duenio)
values (2345234523452345, 'Bancor', 234, '2031/01/01', 1);

insert into TARJETAS(numero, banco, codigo_seguridad, vencimiento, id_duenio)
values (3456345634563456, 'Supervielle', 345, '2032/01/01', 2);

insert into TARJETAS(numero, banco, codigo_seguridad, vencimiento, id_duenio)
values (4567456745674567, 'Santander', 456, '2033/01/01', 3);

insert into TARJETAS(numero, banco, codigo_seguridad, vencimiento, id_duenio)
values (5678567856785678, 'Galicia', 567, '2034/01/01', 5);

insert into DOMICILIOS(id_empleado, calle, altura, ciudad)
values (1, 'Loncoche', 1234, 'Villa Allende');

insert into DOMICILIOS(id_empleado, calle, altura, ciudad)
values (2, 'pepe', 1234, 'Cordoba');

insert into DOMICILIOS(id_empleado, calle, altura, ciudad)
values (3, 'pedro', 1234, 'Villa Allende');

insert into DOMICILIOS(id_empleado, calle, altura, ciudad)
values (4, 'pepito', 1234, 'Cordoba');

insert into DOMICILIOS(id_empleado, calle, altura, ciudad)
values (5, 'juncito', 1234, 'Villa Allende');

insert into TELEFONOS(id_cliente, telefono)
values (1, 3511234567);

insert into TELEFONOS(id_cliente, telefono)
values (1, 3512345678);

insert into TELEFONOS(id_cliente, telefono)
values (2, 3510987654);

insert into TELEFONOS(id_cliente, telefono)
values (3, 3519876543);

insert into TELEFONOS(id_cliente, telefono)
values (4, 3518747894);

insert into PRODUCTOS(descripccion, costo, id_fabrica)
values ('Mouse extreamdamente ligero con rgb', 5000, 20459344730);

insert into PRODUCTOS(descripccion, costo, id_fabrica)
values ('Teclado mecanico con switches red y rgb', 10000, 20459344730);

insert into PRODUCTOS(descripccion, costo, id_fabrica)
values ('Alfajor con dulce de leche y chocolate', 100, 20459344731);

insert into PRODUCTOS(descripccion, costo, id_fabrica)
values ('Gaslletitas dulces con chocolate', 200, 20459344732);

insert into PRODUCTOS(descripccion, costo, id_fabrica)
values ('Lapicera de color negro', 10, 20459344734);

insert into VENTAS(cantidad, precio, id_producto, id_sucursal)
values (2, 100, 1, 1);

insert into VENTAS(cantidad, precio, id_producto, id_sucursal)
values (1, 500, 2, 2);

insert into VENTAS(cantidad, precio, id_producto, id_sucursal)
values (3, 1000, 3, 3);

insert into VENTAS(cantidad, precio, id_producto, id_sucursal)
values (4, 700, 4, 4);

insert into VENTAS(cantidad, precio, id_producto, id_sucursal)
values (6, 5000, 5, 5);

insert into COMPRAS(id_sucursal, id_cliente)
values (1, 1);

insert into COMPRAS(id_sucursal, id_cliente)
values (2, 2);

insert into COMPRAS(id_sucursal, id_cliente)
values (3, 3);

insert into COMPRAS(id_sucursal, id_cliente)
values (4, 4);

insert into COMPRAS(id_sucursal, id_cliente)
values (5, 5);

select * from FABRICAS;

select * from EMPLEADOS;

select * from SUCURSALES;

select * from CLIENTES;

select * from TARJETAS;

select * from DOMICILIOS;

select * from TELEFONOS;

select * from PRODUCTOS;

select * from VENTAS;

select * from COMPRAS;
--BIBLIOTECA:

create database BIBLIOTECA;

use BIBLIOTECA;

create table AUTORES
(
    id_autor          int primary key,
    nombre            varchar(30),
    fecha_nachimiento date
);

create table LIBROS
(
    isbn              bigint primary key,
    titulo            varchar(50),
    genero            varchar(20),
    fecha_lanzamiento date,
    id_autor          int,
    constraint foreign key (id_autor) references AUTORES (id_autor)
);

insert into AUTORES(id_autor, nombre, fecha_nachimiento)
values (1, 'Joanne Rowling', '1965/07/31');

insert into AUTORES(id_autor, nombre, fecha_nachimiento)
values (2, 'Julio Verne', '1828/02/08');

insert into AUTORES(id_autor, nombre, fecha_nachimiento)
values (3, 'Oscar Wilde', '1854/10/16');

insert into AUTORES(id_autor, nombre, fecha_nachimiento)
values (4, 'Paulo Coelho', '1947/08/24');

insert into AUTORES(id_autor, nombre, fecha_nachimiento)
values (5, 'Haruki Murakami', '1949/01/12');

insert into AUTORES(id_autor, nombre, fecha_nachimiento)
values (6, 'Stephen King', '1947/09/21');

insert into AUTORES(id_autor, nombre, fecha_nachimiento)
values (7, 'Agatha Cristie', '1890/09/15');

insert into LIBROS(isbn, titulo, genero, fecha_lanzamiento, id_autor)
values (9780747532743, 'Harry Potter and the Philosophers Stone', 'Ficcion', '1997/01/01', 1);

insert into LIBROS(isbn, titulo, genero, fecha_lanzamiento, id_autor)
values (9780590430531, 'Around the World in 80 Days', 'Aventura', '1872/01/01', 2);

insert into LIBROS(isbn, titulo, genero, fecha_lanzamiento, id_autor)
values (9780752512617, 'Happy Prince', 'Ficcion', '1888/01/01', 3);

insert into LIBROS(isbn, titulo, genero, fecha_lanzamiento, id_autor)
values (9788172235147, 'The Fifth Mountain', 'Ficcion', '1996/01/01', 4);

insert into LIBROS(isbn, titulo, genero, fecha_lanzamiento, id_autor)
values (9781787301252, 'Birthday Girl', 'Historia Corta', '2002/01/01', 5);

insert into LIBROS(isbn, titulo, genero, fecha_lanzamiento, id_autor)
values (9780451153555, 'Misery', 'Thriller', '1987/01/01', 6);

insert into LIBROS(isbn, titulo, genero, fecha_lanzamiento, id_autor)
values (9780007716968, 'The Moving Finger', 'Crimen', '1942/01/01', 7);

--LABORATORIOS:

create database LABORATORIO;

use LABORATORIO;

create table LABORATORIOS
(
    cuil   bigint primary key,
    nombre varchar(50)
);

create table MEDICAMENTOS
(
    codigo_barras     bigint primary key,
    nombre            varchar(30),
    fecha_vencimiento date,
    id_cuil           bigint,
    constraint foreign key (id_cuil) references LABORATORIOS (cuil)
);

insert into LABORATORIOS(cuil, nombre)
values(20329851657, 'Pfizer');

insert into LABORATORIOS(cuil, nombre)
values(27207645791, 'Roche');

insert into LABORATORIOS(cuil, nombre)
values(20455958794, 'Astrazeneca');

insert into LABORATORIOS(cuil, nombre)
values(20459344738, 'Bayer');

insert into LABORATORIOS(cuil, nombre)
values(20459344739, 'Biotenk');

insert into LABORATORIOS(cuil, nombre)
values(20468306535, 'Eurolab');

insert into LABORATORIOS(cuil, nombre)
values(27281024039, 'Diater');

insert into MEDICAMENTOS(codigo_barras, nombre, fecha_vencimiento, id_cuil)
values(7790865642098, 'Acemuk', '2023/09/14', 20329851657);

insert into MEDICAMENTOS(codigo_barras, nombre, fecha_vencimiento, id_cuil)
values(7799876768535, 'Tafirol', '2024/10/09', 27207645791);

insert into MEDICAMENTOS(codigo_barras, nombre, fecha_vencimiento, id_cuil)
values(7790865642090, 'Ibuprofeno', '2025/02/10', 20455958794);

insert into MEDICAMENTOS(codigo_barras, nombre, fecha_vencimiento, id_cuil)
values(7790865642091, 'Novalgina', '2020/01/10', 20459344738);

insert into MEDICAMENTOS(codigo_barras, nombre, fecha_vencimiento, id_cuil)
values(7791928374653, 'Refrianex', '2021/07/14', 20459344738);

insert into MEDICAMENTOS(codigo_barras, nombre, fecha_vencimiento, id_cuil)
values(7783099835925, 'Sinaler', '2027/12/25', 20468306535);

insert into MEDICAMENTOS(codigo_barras, nombre, fecha_vencimiento, id_cuil)
values(7792176002190, 'Frenaler', '2022/04/26', 27281024039);

--SUPERMERCADOS:

create database SUPERMERCADO;

use SUPERMERCADO;

create table SUPERMERCADOS
(
    cuil   bigint primary key ,
    nombre varchar(30)
);

create table PRODUCTOS
(
    codigo_producto int primary key,
    rubro_producto  text,
    descripccion    text,
    nombre          varchar(30),
    marca           varchar(30),
    peso            int,
    precio          int,
    id_supermercado bigint,
    constraint foreign key (id_supermercado) references SUPERMERCADOS (cuil)
);

insert into SUPERMERCADOS(cuil, nombre)
values (27281024039, 'Walmart');

insert into SUPERMERCADOS(cuil, nombre)
values (20468306535, 'Libertad');

insert into SUPERMERCADOS(cuil, nombre)
values (23459344738, 'Chango Mas');

insert into SUPERMERCADOS(cuil, nombre)
values (20459344738, 'Buen Dia');

insert into SUPERMERCADOS(cuil, nombre)
values (20455958794, 'Disco');

insert into SUPERMERCADOS(cuil, nombre)
values (27207645791, 'Super Mami');

insert into SUPERMERCADOS(cuil, nombre)
values (20329851657, 'Cordiez');

insert into PRODUCTOS (codigo_producto, rubro_producto, descripccion, nombre, marca, peso, precio, id_supermercado)
values (1, 'Alimento', 'Papas Fritas Saladas', 'Papas Fritas', 'Lays', 145, 200, 27281024039);

insert into PRODUCTOS (codigo_producto, rubro_producto, descripccion, nombre, marca, peso, precio, id_supermercado)
values (2, 'Golosina', 'Vienen en 5 sabores distintos', 'Caramelos Masticables', 'Arcor', 3, 5, 20468306535);

insert into PRODUCTOS (codigo_producto, rubro_producto, descripccion, nombre, marca, peso, precio, id_supermercado)
values (3, 'Perfumeria', 'Perfume con olor a rosas', 'La Vie Est Belle', 'Lancome', 350, 15000, 23459344738);

insert into PRODUCTOS (codigo_producto, rubro_producto, descripccion, nombre, marca, peso, precio, id_supermercado)
values (4, 'Bebida', 'Bebida carbonatada', 'Sprite', 'Coca Cola Company', 500, 150, 20459344738);

insert into PRODUCTOS (codigo_producto, rubro_producto, descripccion, nombre, marca, peso, precio, id_supermercado)
values (5, 'Lacteo', 'Leche en tetrabrick', 'Leche', 'La Serenisima', 1000, 100, 20455958794);

insert into PRODUCTOS (codigo_producto, rubro_producto, descripccion, nombre, marca, peso, precio, id_supermercado)
values (6, 'Alimento', 'Fideos tirabuzones', 'Pastas', 'Terrabussi', 500, 98, 27207645791);

insert into PRODUCTOS (codigo_producto, rubro_producto, descripccion, nombre, marca, peso, precio, id_supermercado)
values (7, 'Bebida', 'Bebida gasificada', 'Fanta', 'Coca Cola Company', 500, 150, 20329851657);
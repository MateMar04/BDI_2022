--ACTIVIDAD 1

create table GENEROS
(
    id_genero int primary key,
    genero    varchar(20)
);

create table PAISES
(
    id_pais int primary key,
    pais    varchar(30)
);

create table AUTORES
(
    id_autor         int primary key,
    nombre           varchar(30),
    id_pais          int,
    fecha_nacimiento date,
    fecha_defuncion  date,
    constraint `autor->pais` foreign key (id_pais) references PAISES (id_pais)
);

create table LIBROS
(
    codigo_libro      int primary key,
    titulo            varchar(40),
    id_genero         int,
    id_autor          int,
    tapa              varchar(100),
    precio            int,
    fecha_lanzamiento date,
    constraint `libro->genero` foreign key (id_genero) references GENEROS (id_genero),
    constraint `libro->pais` foreign key (id_autor) references AUTORES (id_autor)
);

--A
alter table LIBROS
    add cant_paginas int;

--B
alter table AUTORES drop constraint `autor->pais`;
alter table AUTORES
    add constraint `autor->pais` foreign key (id_pais) references PAISES (id_pais);

--C
alter table AUTORES drop column fecha_nacimiento;
alter table AUTORES drop column fecha_defuncion;
alter table AUTORES
    add column fecha_nacimiento int;
alter table AUTORES
    add column fecha_defuncion int;

--D
alter table GENEROS
    modify genero int;

--E
alter table AUTORES
    modify nombre varchar (80);

--F
alter table LIBROS drop column precio;
alter table LIBROS
    add column precio int;

--G
alter table LIBROS
    modify precio decimal (10, 2);

--H
alter table LIBROS drop column cant_paginas;

--I
alter table LIBROS
    add column seudonimo int;
alter table LIBROS drop column seudonimo;

--ACTIVIDAD 2
alter table LIBROS drop constraint `libro->genero`;
drop table GENEROS;
create table GENEROS
(
    id_genero int,
    genero    varchar(50)
);

--A
alter table GENEROS modify id_genero int not null;

--B
alter table GENEROS modify id_genero int primary key;

--ACTIVIDAD 3
alter table AUTORES drop constraint `autor->pais`;
drop table PAISES;
create table PAISES
(
    id_pais int,
    pais    varchar(50)
);

--A
alter table PAISES modify id_pais int primary key;

--B
alter table AUTORES modify id_pais int not null;
/*EJERCICIO 1*/

drop database if exists videoclub;
create database videoclub;
use videoclub;

drop table if exists peliculas;
create table peliculas
(
    titulo   varchar(20),
    actor    varchar(20),
    duracion integer,
    cantidad integer
);

describe peliculas;

insert into peliculas (titulo, actor, duracion, cantidad)
values ('Mision imposible', 'Tom Cruise', 120, 3);
insert into peliculas (titulo, actor, duracion, cantidad)
values ('Mision imposible 2', 'Tom Cruise', 180, 2);
insert into peliculas (titulo, actor, duracion, cantidad)
values ('Mujer bonita', 'Julia R.', 90, 3);
insert into peliculas (titulo, actor, duracion, cantidad)
values ('Elsa y Fred', 'China Zorrilla', 90, 2);

select titulo, actor
from peliculas;

select titulo, duracion
from peliculas;

select titulo, cantidad
from peliculas;


/*EJERCICIO 2*/
drop table if exists agenda;
create table agenda
(
    nombre    varchar(20),
    domicilio varchar(30),
    telefono  varchar(11)
);

describe agenda;

insert into agenda(nombre, domicilio, telefono)
values ('Alberto Mores', 'Colon 123', '4234567');
insert into agenda(nombre, domicilio, telefono)
values ('Juan Torres', 'Avellaneda 135', '4458787');
insert into agenda(nombre, domicilio, telefono)
values ('Mariana Lopez', 'Urquiza 333', '4545454');
insert into agenda(nombre, domicilio, telefono)
values ('Fernando Lopez', 'Urquiza 333', '4545454');

select *
from agenda;

select *
from agenda
where nombre = 'Juan Torres';

select *
from agenda
where domicilio = 'Colon 123';

select *
from agenda
where telefono = '4545454';

drop table agenda;

/*EJERCICIO 3*/

drop table if exists articulos;
create table articulos
(
    codigo      integer,
    nombre      varchar(20),
    descripcion varchar(30),
    precio      float,
    cantidad    integer
);

describe articulos;

insert into articulos (codigo, nombre, descripcion, precio, cantidad)
values (1, 'impresora', 'Epson Stylus C45', 400.80, 20);
insert into articulos (codigo, nombre, descripcion, precio, cantidad)
values (2, 'impresora', 'Epson Stylus C85', 500, 30);
insert into articulos (codigo, nombre, descripcion, precio, cantidad)
values (3, 'monitor', 'Samsung 14', 800, 10);
insert into articulos (codigo, nombre, descripcion, precio, cantidad)
values (4, 'teclado', 'ingles Biswal', 100, 50);
insert into articulos (codigo, nombre, descripcion, precio, cantidad)
values (5, 'teclado', 'español Biswal', 90, 50);

select *
from articulos;

select *
from articulos
where nombre = 'impresora';

select *
from articulos
where precio >= 500;

select *
from articulos
where cantidad < 30;

select nombre, descripcion
from articulos
where precio != 100;

/*EJERCICIO 4*/

drop table if exists empleados;
create table empleados
(
    nombre       varchar(40),
    documento    int primary key,
    sexo         char,
    domicilio    varchar(40),
    sueldobasico int,
    hijos        integer
);

insert into empleados (nombre, documento, sexo, sueldobasico, hijos)
values ('Juan Perez', '22333444', 'm', 300, 1);
insert into empleados (nombre, documento, sexo, sueldobasico, hijos)
values ('Ana Acosta', '21333444', 'f', 400, 2);
insert into empleados (nombre, documento, sexo, sueldobasico, hijos)
values ('Alberto Lopez', '24333444', 'm', 600, 0);
insert into empleados (nombre, documento, sexo, sueldobasico, hijos)
values ('Carlos Sanchez', '30333444', 'm', 550, 3);
insert into empleados (nombre, documento, sexo, sueldobasico, hijos)
values ('Mariana Torres', '23444555', 'f', 600, 1);
insert into empleados (nombre, documento, sexo, sueldobasico, hijos)
values ('Marcos Garcia', '23664555', 'm', 1500, 2);

select sueldobasico * 1.1 as aumento
from empleados;

select hijos * 200 as salario_familiar
from empleados;

select sueldobasico + hijos * 200 as salario_total
from empleados;

/*EJERCICIO 5*/

drop table if exists empleados;
create table empleados
(
    documento       char(8)     not null,
    nombre          varchar(30) not null,
    sexo            char(1),
    domicilio       varchar(30),
    fechaIngreso    date,
    fechaNacimiento date,
    sueldoBasico    decimal(5, 2) unsigned,
    primary key (documento)
);

insert into empleados (documento, nombre, sexo, domicilio, fechaIngreso, fechaNacimiento, sueldoBasico)
values ('22333111', 'Juan Perez', 'm', 'Colon 123', '1990-02-01', '1970-05-10', 550);
insert into empleados (documento, nombre, sexo, domicilio, fechaIngreso, fechaNacimiento, sueldoBasico)
values ('25444444', 'Susana Morales', 'f', 'Avellaneda 345', '1995-04-01', '1975-11-06', 650);
insert into empleados (documento, nombre, sexo, domicilio, fechaIngreso, fechaNacimiento, sueldoBasico)
values ('20111222', 'Hector Pereyra', 'm', 'Caseros 987', '1995-04-01', '1965-03-25', 510);
insert into empleados (documento, nombre, sexo, domicilio, fechaIngreso, fechaNacimiento, sueldoBasico)
values ('30000222', 'Luis Luque', 'm', 'Urquiza 456', '1980-09-01', '1980-03-29', 700);
insert into empleados (documento, nombre, sexo, domicilio, fechaIngreso, fechaNacimiento, sueldoBasico)
values ('20555444', 'Maria Laura Torres', 'f', 'San Martin 1122', '2000-05-15', '1965-12-22', 700);
insert into empleados (documento, nombre, sexo, domicilio, fechaIngreso, fechaNacimiento, sueldoBasico)
values ('30000234', 'Alberto Soto', 'm', 'Peru 232', '2003-08-15', '1989-10-10', 420);
insert into empleados (documento, nombre, sexo, domicilio, fechaIngreso, fechaNacimiento, sueldoBasico)
values ('20125478', 'Ana Gomez', 'f', 'Sarmiento 975', '2004-06-14', '1976-09-21', 350);
insert into empleados (documento, nombre, sexo, domicilio, fechaIngreso, fechaNacimiento, sueldoBasico)
values ('24154269', 'Ofelia Garcia', 'f', 'Triunvirato 628', '2004-09-23', '1974-05-12', 390);
insert into empleados (documento, nombre, sexo, domicilio, fechaIngreso, fechaNacimiento, sueldoBasico)
values ('30615426', 'Federico Gonzalez', 'm', 'Peru 390', '1996-08-15', '1985-05-01', 580);

select nombre, fechaNacimiento
from empleados
where EXTRACT(MONTH from fechaNacimiento) = 5;

select nombre, fechaIngreso, sueldobasico, sueldobasico * 0.01 as incrememntoSalario
from empleados
where EXTRACT(MONTH from fechaIngreso) = 8;

update empleados
set sueldobasico = sueldobasico + sueldobasico * 0.01;

select nombre, sueldobasico
from empleados
where EXTRACT(MONTH from fechaIngreso) = 8;

select nombre, fechaIngreso, EXTRACT(YEAR from '2016-08-15') - EXTRACT(YEAR from fechaIngreso) as aniosServicio
from empleados
where MOD(EXTRACT(YEAR from '2016-08-15') - EXTRACT(YEAR from fechaIngreso), 10) = 0;

/*EJERCICIO 6*/

drop table if exists medicamentos;
create table medicamentos
(
    codigo      int unsigned auto_increment,
    nombre      varchar(20),
    laboratorio varchar(20),
    precio      decimal(5, 2),
    cantidad    int unsigned,
    primary key (codigo)
);

describe medicamentos;

insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Sertal', 'Roche', 5.2, 100);
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Buscapina', 'Roche', 4.10, 200);
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Amoxidal 500', 'Bayer', 15.60, 100);
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Paracetamol 500', 'Bago', 1.90, 200);
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Bayaspirina', 'Bayer', 2.10, 150);
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Amoxidal jarabe', 'Bayer', 5.10, 250);

select nombre, precio
from medicamentos
order by precio desc;

select nombre, cantidad
from medicamentos
order by cantidad desc;

select *
from medicamentos
order by laboratorio desc, cantidad asc;

/*EJERCICIO 7*/

drop table if exists medicamentos;
create table medicamentos
(
    codigo      int unsigned auto_increment,
    nombre      varchar(20),
    laboratorio varchar(20),
    precio      decimal(5, 2) unsigned,
    cantidad    int unsigned,
    primary key (codigo)
);

describe medicamentos;

insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Sertal', 'Roche', 5.2, 100);
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Buscapina', 'Roche', 4.10, 200);
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Amoxidal 500', 'Bayer', 15.60, 100);
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Paracetamol 500', 'Bago', 1.90, 200);
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Bayaspirina', 'Bayer', 2.10, 150);
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Amoxidal jarabe', 'Bayer', 5.10, 250);

select nombre, laboratorio, precio
from medicamentos
where laboratorio = 'Roche'
  and precio < 5;

select nombre, laboratorio, precio
from medicamentos
where laboratorio = 'Roche'
   or precio < 5;

select nombre, laboratorio
from medicamentos
where laboratorio != 'Bayer';

select nombre, laboratorio, cantidad
from medicamentos
where not laboratorio = 'Bayer'
  and cantidad = 100;

select nombre, laboratorio, cantidad
from medicamentos
where not laboratorio = 'Bayer'
  and not cantidad = 100;

delete
from medicamentos
where laboratorio = 'Bayer'
  and precio > 10;

update medicamentos
set cantidad = 200
where laboratorio = 'Roche'
  and precio > 5;

delete
from medicamentos
where laboratorio = 'Bayer'
   or precio < 3;

/*EJERCICIO 8*/

drop table if exists medicamentos;
create table medicamentos
(
    codigo      int unsigned auto_increment,
    nombre      varchar(20),
    laboratorio varchar(20),
    precio      decimal(5, 2) unsigned,
    cantidad    int unsigned,
    primary key (codigo)
);

describe medicamentos;

insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Sertal', 'Roche', 5.2, 100);
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Buscapina', 'Roche', 4.10, 200);
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Amoxidal 500', 'Bayer', 15.60, 100);
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Paracetamol 500', 'Bago', 1.90, 200);
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Bayaspirina', 'Bayer', 2.10, 150);
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Amoxidal jarabe', 'Bayer', 5.10, 250);

select nombre, laboratorio, precio
from medicamentos
where precio between 5 and 15;

select *
from medicamentos
where laboratorio = 'Bayer'
   or laboratorio = 'Bago';

delete
from medicamentos
where cantidad between 100 and 200;

/*EJERCICIO 9*/

drop table if exists medicamentos;
create table medicamentos
(
    codigo      int unsigned auto_increment,
    nombre      varchar(20) not null,
    laboratorio varchar(20),
    precio      decimal(6, 2) unsigned,
    cantidad    int unsigned,
    primary key (codigo)
);

describe medicamentos;

insert into medicamentos (nombre, laboratorio, precio)
values ('Sertal gotas', 'Roche', 5.2);
insert into medicamentos (nombre, laboratorio, precio)
values ('Buscapina', 'Roche', 4.10);
insert into medicamentos (nombre, laboratorio, precio)
values ('Amoxidal 500', 'Bayer', 15.60);
insert into medicamentos (nombre, laboratorio, precio)
values ('Paracetamol 500', 'Bago', 1.90);
insert into medicamentos (nombre, laboratorio, precio)
values ('Bayaspirina', 'Bayer', 2.10);
insert into medicamentos (nombre, laboratorio, precio)
values ('Amoxidal jarabe', 'Bayer', 5.10);
insert into medicamentos (nombre, laboratorio, precio)
values ('Sertal compuesto', 'Bayer', 5.10);
insert into medicamentos (nombre, laboratorio, precio)
values ('Paracetamol 1000', 'Bago', 2.90);
insert into medicamentos (nombre, laboratorio, precio)
values ('Amoxinil', 'Roche', 17.80);

select *
from medicamentos
where nombre like 'Amox%';

select *
from medicamentos
where nombre = 'Paracetamol%'
  and precio < 2;

select *
from medicamentos
where precio like '%.10';

select *
from medicamentos
where nombre not like '%compuesto%';

delete
from medicamentos
where laboratorio like '%y%';

update medicamentos
set precio = 5
where nombre like '%Paracetamol%'
  and precio > 2;

/*EJERCICIO 10*/

drop table if exists agenda;
create table agenda
(
    apellido  varchar(30),
    nombre    varchar(20) not null,
    domicilio varchar(30),
    telefono  varchar(11),
    mail      varchar(30)
);

insert into agenda
values ('Perez', 'Juan', 'Sarmiento 345', '4334455', 'juancito@gmail.com');
insert into agenda
values ('Garcia', 'Ana', 'Urquiza 367', '4226677', 'anamariagarcia@hotmail.com');
insert into agenda
values ('Lopez', 'Juan', 'Avellaneda 900', null, 'juancitoLopez@gmail.com');
insert into agenda
values ('Juarez', 'Mariana', 'Sucre 123', '0525657687', 'marianaJuarez2@gmail.com');
insert into agenda
values ('Molinari', 'Lucia', 'Peru 1254', '4590987', 'molinarilucia@hotmail.com');
insert into agenda
values ('Ferreyra', 'Patricia', 'Colon 1534', '4585858', null);
insert into agenda
values ('Perez', 'Susana', 'San Martin 333', null, null);
insert into agenda
values ('Perez', 'Luis', 'Urquiza 444', '0354545256', 'perezluisalberto@hotmail.com');
insert into agenda
values ('Lopez', 'Maria', 'Salta 314', null, 'lopezmariayo@gmail.com');

select *
from agenda
where mail like '%gmail%';

select *
from agenda
where nombre not like '%z%'
  and nombre not like '%g%';

select *
from agenda
where apellido not like '%v%'
  and apellido not like '%w%'
  and apellido not like '%x%'
  and apellido not like '%y%'
  and apellido not like '%z%';

select *
from agenda
where apellido like '%ez';

select apellido, nombre, domicilio
from agenda
where apellido like '%i%i%';

select telefono
from agenda
where CHAR_LENGTH(telefono) = 7;

select nombre, mail
from agenda
where CHAR_LENGTH(mail) >= 20;

/*EJERCICIO 11*/

drop table if exists visitantes;
create table visitantes
(
    nombre      varchar(30),
    edad        tinyint unsigned,
    sexo        char(1),
    domicilio   varchar(30),
    ciudad      varchar(20),
    telefono    varchar(11),
    montocompra decimal(6, 2) unsigned
);

insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Susana Molina', 28, 'f', 'Colon 123', 'Cordoba', null, 45.50);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Marcela Mercado', 36, 'f', 'Avellaneda 345', 'Cordoba', '4545454', 0);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Alberto Garcia', 35, 'm', 'Gral. Paz 123', 'Alta Gracia', '03547123456', 25);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Teresa Garcia', 33, 'f', 'Gral. Paz 123', 'Alta Gracia', '03547123456', 0);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Roberto Perez', 45, 'm', 'Urquiza 335', 'Cordoba', '4123456', 33.20);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Marina Torres', 22, 'f', 'Colon 222', 'Villa Dolores', '03544112233', 25);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Julieta Gomez', 24, 'f', 'San Martin 333', 'Alta Gracia', '03547121212', 53.50);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Roxana Lopez', 20, 'f', 'Triunvirato 345', 'Alta Gracia', null, 0);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Liliana Garcia', 50, 'f', 'Paso 999', 'Cordoba', '4588778', 48);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Juan Torres', 43, 'm', 'Sarmiento 876', 'Cordoba', '4988778', 15.30);

select count(*)
from visitantes;

select count(telefono)
from visitantes;

select count(*)
from visitantes
where sexo = 'm';

select *
from visitantes
where sexo = 'f'
  and edad > 25;

select count(*)
from visitantes
where not ciudad = 'Cordoba';

select count(*)
from visitantes
where montocompra > 0;

select count(*)
from visitantes
where montocompra = 0;

/*EJERCICIO 12*/

drop table if exists visitantes;
create table visitantes
(
    nombre      varchar(30),
    edad        tinyint unsigned,
    sexo        char(1),
    domicilio   varchar(30),
    ciudad      varchar(20),
    telefono    varchar(11),
    montocompra decimal(6, 2) unsigned
);

insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Susana Molina', 28, 'f', 'Colon 123', 'Cordoba', null, 45.50);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Marcela Mercado', 36, 'f', 'Avellaneda 345', 'Cordoba', '4545454', 0);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Alberto Garcia', 35, 'm', 'Gral. Paz 123', 'Alta Gracia', '03547123456', 25);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Teresa Garcia', 33, 'f', 'Gral. Paz 123', 'Alta Gracia', '03547123456', 0);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Roberto Perez', 45, 'm', 'Urquiza 335', 'Cordoba', '4123456', 33.20);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Marina Torres', 22, 'f', 'Colon 222', 'Villa Dolores', '03544112233', 25);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Julieta Gomez', 24, 'f', 'San Martin 333', 'Alta Gracia', '03547121212', 53.50);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Roxana Lopez', 20, 'f', 'Triunvirato 345', 'Alta Gracia', null, 0);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Liliana Garcia', 50, 'f', 'Paso 999', 'Cordoba', '4588778', 48);
insert into visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
values ('Juan Torres', 43, 'm', 'Sarmiento 876', 'Cordoba', '4988778', 15.30);

select count(*)
from visitantes;

select sum(montocompra)
from visitantes
where ciudad = 'Alta Gracia';

select max(montocompra)
from visitantes;

select min(edad)
from visitantes;

select avg(montocompra)
from visitantes;

/*EJERCICIO 13*/

drop table if exists clientes;
create table clientes
(
    codigo    int unsigned auto_increment,
    nombre    varchar(30) not null,
    domicilio varchar(30),
    ciudad    varchar(20),
    provincia varchar(20),
    telefono  varchar(11),
    primary key (codigo)
);

insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Lopez Marcos', 'Colon 111', 'Córdoba', 'Cordoba', 'null');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Perez Ana', 'San Martin 222', 'Cruz del Eje', 'Cordoba', '4578585');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Garcia Juan', 'Rivadavia 333', 'Villa Maria', 'Cordoba', '4578445');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Perez Luis', 'Sarmiento 444', 'Rosario', 'Santa Fe', null);
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Pereyra Lucas', 'San Martin 555', 'Cruz del Eje', 'Cordoba', '4253685');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Gomez Ines', 'San Martin 666', 'Santa Fe', 'Santa Fe', '0345252525');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Torres Fabiola', 'Alem 777', 'Villa del Rosario', 'Cordoba', '4554455');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Lopez Carlos', 'Irigoyen 888', 'Cruz del Eje', 'Cordoba', null);
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Ramos Betina', 'San Martin 999', 'Cordoba', 'Cordoba', '4223366');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Lopez Lucas', 'San Martin 1010', 'Posadas', 'Misiones', '0457858745');

select count(*)
from clientes;

select count(telefono)
from clientes;

select ciudad, provincia, count(*)
from clientes
group by ciudad, provincia
order by provincia desc;

/*EJERCICIO 14*/

drop table if exists clientes;
create table clientes
(
    codigo    int unsigned auto_increment,
    nombre    varchar(30) not null,
    domicilio varchar(30),
    ciudad    varchar(20),
    provincia varchar(20),
    telefono  varchar(11),
    primary key (codigo)
);

insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Lopez Marcos', 'Colon 111', 'Córdoba', 'Cordoba', 'null');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Perez Ana', 'San Martin 222', 'Cruz del Eje', 'Cordoba', '4578585');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Garcia Juan', 'Rivadavia 333', 'Villa Maria', 'Cordoba', '4578445');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Perez Luis', 'Sarmiento 444', 'Rosario', 'Santa Fe', null);
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Pereyra Lucas', 'San Martin 555', 'Cruz del Eje', 'Cordoba', '4253685');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Gomez Ines', 'San Martin 666', 'Santa Fe', 'Santa Fe', '0345252525');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Torres Fabiola', 'Alem 777', 'Villa del Rosario', 'Cordoba', '4554455');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Lopez Carlos', 'Irigoyen 888', 'Cruz del Eje', 'Cordoba', null);
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Ramos Betina', 'San Martin 999', 'Cordoba', 'Cordoba', '4223366');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Lopez Lucas', 'San Martin 1010', 'Posadas', 'Misiones', '0457858745');

select provincia, count(*)
from clientes
group by provincia;

select ciudad, provincia, count(*)
from clientes
group by ciudad, provincia;

select ciudad, provincia, count(telefono)
from clientes
group by ciudad, provincia
having count(telefono) < 2;

/*EJERCICIO 15*/

drop table if exists cursos;
create table cursos
(
    codigo      tinyint unsigned auto_increment,
    tema        varchar(20) not null,
    horario     char(2)     not null,
    clases      tinyint unsigned default 10,
    fechainicio date,
    costo       decimal(5, 2) unsigned,
    primary key (codigo)
);

insert into cursos (tema, horario, clases, fechainicio, costo)
values ('PHP básico', 'AM', 10, '2006-08-07', 200);
insert into cursos (tema, horario, clases, fechainicio, costo)
values ('PHP básico', 'PM', default, '2006-08-14', 200);
insert into cursos (tema, horario, clases, fechainicio, costo)
values ('PHP básico', 'AM', default, '2006-08-05', 200);
insert into cursos (tema, horario, clases, fechainicio, costo)
values ('PHP avanzado', 'AM', 20, '2006-08-01', 350);
insert into cursos (tema, horario, clases, fechainicio, costo)
values ('JavaScript básico', 'PM', 15, '2006-09-11', 150);
insert into cursos (tema, horario, clases, fechainicio, costo)
values ('Paginas web', 'PM', 15, '2006-08-08', 200);
insert into cursos (tema, horario, clases, fechainicio, costo)
values ('Paginas web', 'AM', 15, '2006-08-12', 200);
insert into cursos (tema, horario, clases, fechainicio, costo)
values ('Paginas web', 'AM', 15, '2006-08-21', 200);
insert into cursos (tema, horario, clases, fechainicio, costo)
values ('HTML avanzado', 'AM', 20, '2006-09-18', 180);
insert into cursos (tema, horario, clases, fechainicio, costo)
values ('HTML avanzado', 'PM', 20, '2006-09-25', 180);
insert into cursos (tema, horario, clases, fechainicio, costo)
values ('JavaScript avanzado', 'PM', 25, '2006-09-18', 150);

select distinct tema
from cursos;

select distinct horario, tema
from cursos
where tema like '%PHP%';

select horario, count(distinct tema)
from cursos
group by horario;

/*EJERCICIO 16*/

drop table if exists clientes;
create table clientes
(
    codigo    int unsigned auto_increment,
    nombre    varchar(30) not null,
    domicilio varchar(30),
    ciudad    varchar(20),
    provincia varchar(20),
    telefono  varchar(11),
    primary key (codigo)
);

insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Lopez Marcos', 'Colon 111', 'Córdoba', 'Cordoba', 'null');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Perez Ana', 'San Martin 222', 'Cruz del Eje', 'Cordoba', '4578585');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Garcia Juan', 'Rivadavia 333', 'Villa Maria', 'Cordoba', '4578445');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Perez Luis', 'Sarmiento 444', 'Rosario', 'Santa Fe', null);
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Pereyra Lucas', 'San Martin 555', 'Cruz del Eje', 'Cordoba', '4253685');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Gomez Ines', 'San Martin 666', 'Santa Fe', 'Santa Fe', '0345252525');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Torres Fabiola', 'Alem 777', 'Villa del Rosario', 'Cordoba', '4554455');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Lopez Carlos', 'Irigoyen 888', 'Cruz del Eje', 'Cordoba', null);
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Ramos Betina', 'San Martin 999', 'Cordoba', 'Cordoba', '4223366');
insert into clientes (nombre, domicilio, ciudad, provincia, telefono)
values ('Lopez Lucas', 'San Martin 1010', 'Posadas', 'Misiones', '0457858745');

select count(telefono) as telefonosNoNulos
from clientes;

select count(nombre) as CantidadPerez
from clientes
where nombre like '%Perez%';

select count(distinct ciudad) as CantidadCiudadesDistintas
from clientes;
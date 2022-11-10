create database PALADINI;

show databases;

use PALADINI;

show tables;

create table MEDICOS(dni int primary key, nombre varchar(30), apellido varchar(30));

create table EMPLEADOS(dni int primary key, nombre varchar(30), apellido varchar(30), fecha_nacimiento datetime);

show tables;

describe EMPLEADOS;

describe MEDICOS;

create table CONTROLES(id int primary key, fecha_vencimiento_carnet_sanitario datetime,fecha_ult_apto_fisico datetime, resultado_ult_analisis_sangre text, id_medico int, id_empleado int, constraint foreign key (id_medico) references MEDICOS(dni), constraint foreign key (id_empleado) references EMPLEADOS(dni));

show tables;

describe CONTROLES;

describe EMPLEADOS;

describe MEDICOS;

insert into MEDICOS (dni, nombre, apellido)
values (20764579, 'Elvio', 'Marchisone');

insert into MEDICOS (dni, nombre, apellido)
values (45934473, 'Mateo', 'Marchisone');

insert into MEDICOS (dni, nombre, apellido)
values (23981591, 'Yanina', 'Ribone');

insert into EMPLEADOS (dni, nombre, apellido)
values (49871345, 'Bianca', 'Marchisone', '2004/09/14');

insert into EMPLEADOS (dni, nombre, apellido)
values (45934474, 'Lorenzo', 'Galaverna', '2005/07/05');

insert into EMPLEADOS (dni, nombre, apellido)
values (45934475, 'Guillermo', 'Andino', '2004/06/24');

insert into CONTROLES (id, fecha_vencimiento_carnet_sanitario, fecha_ult_apto_fisico, resultado_ult_analisis_sangre,
			id_medico, id_empleado)
values (1, '2022/07/24', '2021/05/15', 'Correcto', 45934473, 45934474);

insert into CONTROLES (id, fecha_vencimiento_carnet_sanitario, fecha_ult_apto_fisico, resultado_ult_analisis_sangre,
			id_medico, id_empleado)
values (2, '2022/07/24', '2021/05/15', 'Correcto', 45934473, 45934475);

insert into CONTROLES (id, fecha_vencimiento_carnet_sanitario, fecha_ult_apto_fisico, resultado_ult_analisis_sangre,
                        id_medico, id_empleado)
values (3, '2022/07/24', '2021/05/15', 'Correcto', 20764579, 49871345);

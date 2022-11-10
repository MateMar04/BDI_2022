drop database if exists ALQUILER_PELICULAS;
create database ALQUILER_PELICULAS;
use ALQUILER_PELICULAS;

create table LANGUAGES
(
    id   int primary key,
    name varchar(20)
);

create table RATINGS
(
    id   int primary key,
    name varchar(20)
);

create table ACTORS
(
    id         int primary key,
    first_name varchar(20),
    last_name  varchar(30)
);

create table STORES
(
    id           int primary key,
    name         varchar(30),
    manager_name varchar(40)
);

create table FILMS
(
    id                int primary key,
    title             varchar(50),
    description       text,
    category          varchar(20),
    lenght            int,
    original_language varchar(20),
    language          varchar(20),
    id_language       int,
    id_rating         int,
    constraint `film->language` foreign key (id_language) references LANGUAGES (id),
    constraint `film->rating` foreign key (id_rating) references RATINGS (id)
);

create table CASTINGS
(
    id       int primary key,
    id_actor int,
    id_film  int,
    constraint `casting->actor` foreign key (id_actor) references ACTORS (id),
    constraint `casting->film` foreign key (id_film) references FILMS (id)
);

create table MERCHS
(
    id       int primary key,
    id_store int,
    id_film  int,
    constraint `merch->store` foreign key (id_store) references STORES (id),
    constraint `merch->film` foreign key (id_film) references FILMS (id)
);

insert into LANGUAGES(id, name)
values (0, 'English');

insert into LANGUAGES(id, name)
values (1, 'Español');

insert into LANGUAGES(id, name)
values (2, 'Dutch');

insert into LANGUAGES(id, name)
values (3, 'Italiano');

insert into LANGUAGES(id, name)
values (4, 'Português');

insert into RATINGS(id, name)
values (0, 'G');

insert into RATINGS(id, name)
values (1, 'PG');

insert into RATINGS(id, name)
values (2, 'PG-13');

insert into RATINGS(id, name)
values (3, 'R');

insert into RATINGS(id, name)
values (4, 'NC-17');

insert into ACTORS(id, first_name, last_name)
values (0, 'Tom', 'Cruise');

insert into ACTORS(id, first_name, last_name)
values (1, 'Rebecca', 'Ferguson');

insert into ACTORS(id, first_name, last_name)
values (3, 'Hayden', 'Christensen');

insert into ACTORS(id, first_name, last_name)
values (2, 'Natalie', 'Portman');

insert into ACTORS(id, first_name, last_name)
values (4, 'Ewan', 'McGregor');

insert into STORES(id, name, manager_name)
values (0, 'MateoStore', 'Mateo');

insert into STORES(id, name, manager_name)
values (1, 'LorenzoStore', 'Lorenzo');

insert into STORES(id, name, manager_name)
values (2, 'SantiagoStore', 'Santiago');

insert into STORES(id, name, manager_name)
values (3, 'LautaroStore', 'Lautaro');

insert into STORES(id, name, manager_name)
values (4, 'JulianStore', 'Julian');

insert into FILMS(id, title, description, category, lenght, original_language, language, id_language, id_rating)
values (0, 'Imposible Mision Fallout',
        'A group of terrorists plans to detonate three plutonium cores for a simultaneous nuclear attack on different cities. Ethan Hunt, along with his IMF team, sets out to stop the carnage.',
        'Action', 120, 'English', 'English', 0, 2);

insert into FILMS(id, title, description, category, lenght, original_language, language, id_language, id_rating)
values (1, 'Imposible Mision Ghost Protocol',
        'When the IMF is wrongly accused of bombing the Kremlin, Ethan and his team race against time to find the real culprits and clear the reputation of their organisation.',
        'Action', 140, 'English', 'English', 0, 3);

insert into FILMS(id, title, description, category, lenght, original_language, language, id_language, id_rating)
values (2, 'Star Wars Episode I',
        'Jedi Knights Qui-Gon Jinn and Obi-Wan Kenobi set out to stop the Trade Federation from invading Naboo. While travelling, they come across a gifted boy, Anakin, and learn that the Sith have returned.',
        'Action', 180, 'English', 'English', 0, 0);

insert into FILMS(id, title, description, category, lenght, original_language, language, id_language, id_rating)
values (3, 'Star Wars Episode II',
        'While pursuing an assassin, Obi Wan uncovers a sinister plot to destroy the Republic. With the fate of the galaxy hanging in the balance, the Jedi must defend the galaxy against the evil Sith.',
        'Action', 180, 'English', 'English', 0, 0);

insert into FILMS(id, title, description, category, lenght, original_language, language, id_language, id_rating)
values (4, 'Star Wars Episode III',
        'Anakin joins forces with Obi-Wan and sets Palpatine free from the evil clutches of Count Doku. However, he falls prey to Palpatine and the Jedis'' mind games and gives into temptation.',
        'Action', 180, 'English', 'English', 0, 0);

insert into CASTINGS(id, id_actor, id_film)
values (0, 0, 0);

insert into CASTINGS(id, id_actor, id_film)
values (1, 1, 0);

insert into CASTINGS(id, id_actor, id_film)
values (2, 2, 4);

insert into CASTINGS(id, id_actor, id_film)
values (3, 2, 4);

insert into CASTINGS (id, id_actor, id_film)
values (4, 4, 4);

insert into MERCHS(id, id_store, id_film)
values (0, 0, 0);

insert into MERCHS(id, id_store, id_film)
values (1, 1, 1);

insert into MERCHS(id, id_store, id_film)
values (2, 2, 2);

insert into MERCHS(id, id_store, id_film)
values (3, 3, 3);

insert into MERCHS(id, id_store, id_film)
values (4, 4, 4);
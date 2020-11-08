create database if not exists example;
use example;
create table if not exists users (
	id int,
    name varchar(100)
    );
insert into users values (
	1, 'Petya');
    
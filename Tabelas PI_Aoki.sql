CREATE DATABASE PI;

USE PI;

CREATE TABLE empresa (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome varchar(45),
	localização varchar(45),
	CNPJ varchar(20)
);

insert into empresa values
	(default, 'Minato Wasabi', 'Pilar do Sul', '12458952/0001-24'),
    (default, 'Wasabi Mais', 'Vinhedo', '48568942/0012-46'),
    (default, 'Yama Wasabi', 'Valinhos', '89547628/0007-75'),
    (default, 'Aosabi', 'Águas de São Pedro', '25689333/0048-79');

describe empresa;

select * from empresa;

create table estufa (
	id int primary key auto_increment,
	empresa varchar(45),
    numero int
    ) auto_increment = 100 ;

insert into estufa values
	(default, 'Minato Wasabi', 1),
    (default, 'Minato Wasabi', 2),
    (default, 'Minato Wasabi', 3),
    (default, 'Wasabi Mais', 1),
    (default, 'Wasabi Mais', 2),
    (default, 'Yama Wasabi', 1),
    (default, 'Aosabi', 1),
    (default, 'Aosabi', 2);

describe estufa;

select * from estufa;

create table temperatura (
	id int primary key auto_increment,
	temperatura float,
    horario timestamp default current_timestamp,
    empresa varchar(45),
    estufa int
    ) auto_increment = 1000;

describe temperatura;

insert into temperatura values
	(default, 15, default, 'Minato Wasabi', 1);

select * from temperatura;

insert into temperatura values
	(default, 14, default, 'Minato Wasabi', 2),
    (default, 9, default, 'Minato Wasabi', 3),
    (default, 14, default, 'Minato Wasabi', 1),
    (default, 14, default, 'Minato Wasabi', 3),
    (default, 18, default, 'Minato Wasabi', 2),
    (default, 10, default, 'Minato Wasabi', 1);

select * from temperatura;

select * from temperatura
	where estufa = 1;
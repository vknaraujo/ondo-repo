create database wasabi;

use wasabi;

create table empresa (
idEmpresa int primary key auto_increment,
nome varchar(250) not null,
cnpj char(14) not null,
cep char (8) not null,
numero int,
rua varchar(100) not null,
cidade varchar(100) not null,
estado varchar(100) not null,
pais varchar(100) not null
);

insert into empresa values
	(default, 'Minato Wasabi', '12345678901234', '12345678', '123', 'rua abobrinha', 'São Paulo', 'São Paulo', 'Brasil'),
    (default, 'Wasabi Bom', '30298330807111', '87032673', '581', 'rua maçã', 'Valinhos', 'São Paulo', 'Brasil'),
    (default, 'Yama Wasabi', '43300344437547', '13259113', '388', 'rua abobrinha', 'Itu', 'São Paulo', 'Brasil'),
    (default, 'Viva Wasabi', '97362824599829', '79243795', '427', 'rua beringela', 'Campinas', 'São Paulo', 'Brasil'),
    (default, 'Wasabi Chicara', '75327833776176', '88998413', '2134', 'rua morango', 'Santos', 'São Paulo', 'Brasil');

select * from empresa;

create table estufa (
idEstufa int primary key auto_increment,
empresa varchar(150),
numero int
) auto_increment = 100;

insert into estufa values
	(default, 'Minato Wasabi', 1),
    (default, 'Minato Wasabi', 2),
    (default, 'Minato Wasabi', 3),
    (default, 'Wasabi Bom', 1),
    (default, 'Yama Wasabi', 1),
    (default, 'Yama Wasabi', 2),
    (default, 'Viva Wasabi', 1),
    (default, 'Viva Wasabi', 2),
    (default, 'Viva Wasabi', 3),
    (default, 'Wasabi Chicara', 1);
    
select * from estufa;

create table temperatura (
idTemperatura int primary key auto_increment,
temperatura float(3,1) not null,
datahora datetime default current_timestamp,
empresa varchar(250),
estufa int
) auto_increment = 10000;

insert into temperatura values
	(default, 14.5, default, 'Minato Wasabi', 1),
    (default, 14, default, 'Minato Wasabi', 3),
    (default, 13, default, 'Minato Wasabi', 2),
    (default, 14, default, 'Minato Wasabi', 1),
    (default, 15.5, default, 'Minato Wasabi', 1),
    (default, 20, default, 'Minato Wasabi', 3),
    (default, 19.5, default, 'Minato Wasabi', 3),
    (default, 13.5, default, 'Minato Wasabi', 2),
    (default, 12.5, default, 'Minato Wasabi', 2),
    (default, 17.5, default, 'Minato Wasabi', 1),
    (default, 16.5, default, 'Minato Wasabi', 3);
    
select * from temperatura;

create table aviso (
idAviso int primary key auto_increment,
temperatura float(3.1),
mensagem varchar(50)
) auto_increment = 2000;

alter table aviso add constraint chkAviso
	check (mensagem in('temp ok', 'temp ruim', 'temp controlar'));

insert into aviso values
	(default, 19, 'temp controlar'),
    (default, 9, 'temp controlar'),
    (default, 12, 'temp ok'),
    (default, 14, 'temp ok'),
    (default, 21, 'temp ruim'),
    (default, 7, 'temp ruim');

select * from aviso;
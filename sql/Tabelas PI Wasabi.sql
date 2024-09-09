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
tamanho float (7,2),
numero int
) auto_increment = 100;

insert into estufa values
	(default, 100, 1),
    (default, 60.5, 2),
    (default, 30, 3),
    (default, 40.30, 4),
    (default, 55, 5);
    
select * from estufa;

create table temperatura (
idTemperatura int primary key auto_increment,
temperatura float(3,1) not null,
datahora datetime default current_timestamp,
estufa int
) auto_increment = 1000;

insert into temperatura values
	(default, 14.5, default, 1),
    (default, 14, default, 3),
    (default, 13, default, 2),
    (default, 14, default, 1),
    (default, 15.5, default, 1),
    (default, 20, default, 4),
    (default, 19.5, default, 5),
    (default, 13.5, default, 2),
    (default, 12.5, default, 2),
    (default, 17.5, default, 3),
    (default, 16.5, default, 1);
    
select * from temperatura;

create table aviso (
idAviso int primary key auto_increment,
temperatura float(3.1),
mensagem varchar(50)
) auto_increment = 10000;

alter table aviso add constraint chkAviso
	check (mensagem in('A temperatura está correta.', 'Alerta! A temperatura está fora do limite.', 'A temperatura exige atenção.'));

insert into aviso values
	(default, 19, 'A temperatura exige atenção.'),
    (default, 9, 'A temperatura exige atenção.'),
    (default, 12, 'A temperatura está correta.'),
    (default, 14, 'A temperatura está correta.'),
    (default, 21, 'Alerta! A temperatura está fora do limite.'),
    (default, 7, 'Alerta! A temperatura está fora do limite.');

select * from aviso;
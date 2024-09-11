create database ondo;

use ondo;

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

insert into empresa(nome, cnpj, cep, numero, rua, cidade, estado, pais) values
	('Minato Wasabi', '12345678901234', '12345678', '123', 'rua cara', 'São Paulo', 'São Paulo', 'Brasil'),
    ('Wasabi Bom', '30298330807111', '87032673', '581', 'rua mais', 'Valinhos', 'São Paulo', 'Brasil'),
    ('Yama Wasabi', '43300344437547', '13259113', '388', 'rua menos', 'Itu', 'São Paulo', 'Brasil'),
    ('Viva Wasabi', '97362824599829', '79243795', '427', 'rua sono', 'Campinas', 'São Paulo', 'Brasil'),
    ('Wasabi Chicara', '75327833776176', '88998413', '2134', 'rua barata', 'Santos', 'São Paulo', 'Brasil');

select * from empresa;

create table temperatura (
idTemperatura int primary key auto_increment,
temperatura float(3,1) not null,
datahora datetime default current_timestamp,
estufa int
) auto_increment = 1000;

insert into temperatura (temperatura, datahora, estufa) values
	(14.5, default, 1),
    (14, default, 3),
    (13, default, 2),
    (14, default, 1),
    (15.5, default, 1),
    (20, default, 4),
    (19.5, default, 5),
    (13.5, default, 2),
    (12.5, default, 2),
    (17.5, default, 3),
    (16.5, default, 1);
    
select * from temperatura;

create table aviso (
idAviso int primary key auto_increment,
temperatura float(3.1),
mensagem varchar(50)
) auto_increment = 10000;

alter table aviso add constraint chkAviso
	check (mensagem in('A temperatura está de acordo', 'Alerta! A temperatura está fora do limite.', 'Atenção, a temperatura exige um cuidado.'));

insert into aviso values
	(default, 19, 'A temperatura exige atenção.'),
    (default, 9, 'A temperatura está de acordo'),
    (default, 12, 'A temperatura está de acordo.'),
    (default, 14, 'Atenção, a temperatura exige um cuidado.'),
    (default, 21, 'Alerta! A temperatura está fora do limite.'),
    (default, 7, 'Alerta! A temperatura está fora do limite.');

select * from aviso;
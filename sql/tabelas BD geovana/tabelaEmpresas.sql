CREATE DATABASE negocios;
USE negocios;

CREATE TABLE empresas (
    idEmpresa INT AUTO_INCREMENT PRIMARY KEY,
    nomeEmpresa VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    dtFundacao DATE NOT NULL,
    fundador VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) NOT NULL,
    receitaAnual DECIMAL(15, 2) NOT NULL
);

INSERT INTO Empresas (nomeEmpresa, endereco, cidade, estado, telefone, dtFundacao, fundador, cnpj, receitaAnual) VALUES
('Wasabi Tech Ltda','Rua das Plantas, 123','São Paulo','SP', '(11) 98765-4321','2015-04-10','Takashi Nakamura','12.345.678/0001-99',5000000.00),
('Greenhouse Solutions','Avenida das Estufas, 456','Curitiba','PR','(41) 99876-5432','2010-08-20','Maria Fernandes','23.456.789/0001-88',3000000.00),
('Sensor Corp','Alameda dos Sensores, 789','Rio de Janeiro','RJ','(21) 91234-5678','2018-06-15','Carlos Almeida','34.567.890/0001-77',4500000.00),
('AgroTech Innovations','Rua da Agricultura, 101','Porto Alegre','RS','(51) 92345-6789','2012-11-30','Laura Pereira','45.678.901/0001-66',6000000.00),
('Eco Growers Inc.','Avenida Verde, 202','Belo Horizonte','MG','(31) 93456-7890','2017-02-25','João Santos','56.789.012/0001-55',3500000.00),
('TechGrow Ltda','Rua das Inovações, 321','Campinas','SP','(19) 99887-6543','2016-09-15','Renato Oliveira','67.890.123/0001-44',2700000.00),
('Agro Solutions','Avenida Rural, 789','Salvador','BA','(71) 98765-4321','2013-05-22','Ana Souza','78.901.234/0001-33',3200000.00),
('BioFarm Tech','Estrada das Fazendas, 456','Fortaleza','CE','(85) 99876-5432','2014-10-01','Paulo Mendes','89.012.345/0001-22',4100000.00),
('Smart Agriculture','Alameda das Colheitas, 654','Florianópolis','SC','(48) 98765-4321','2019-03-12','Juliana Silva','90.123.456/0001-11',3800000.00),
('EcoFarms Ltda','Rua Verde, 101','Goiânia','GO','(62) 99876-5432','2011-07-07','Rodrigo Campos','12.345.678/0002-99',2900000.00),
('PlantTech Solutions','Avenida das Sementes, 202','Recife','PE','(81) 98765-4321','2012-12-19','Mariana Ferreira','23.456.789/0002-88',3100000.00),
('Green Innovations','Rua Sustentável, 303','Natal','RN','(84) 99876-5432','2017-08-25','Fernando Lima','34.567.890/0002-77',2500000.00),
('AgriSys Inc.','Estrada Agro, 404', 'Manaus','AM','(92) 98765-4321','2010-11-11','Camila Barbosa','45.678.901/0002-66',3600000.00),
('Terra Viva Corp','Avenida da Terra, 505','Belém','PA','(91) 99876-5432','2013-04-05','José Costa','56.789.012/0002-55',4300000.00),
('Harvest Tech','Alameda das Colheitas, 606','João Pessoa','PB','(83) 98765-4321','2018-01-20','Patrícia Andrade','67.890.123/0002-44',3700000.00);

SELECT * FROM empresas;
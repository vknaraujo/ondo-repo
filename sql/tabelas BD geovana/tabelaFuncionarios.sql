CREATE DATABASE funcionanrios;
USE funcionanrios;

CREATE TABLE funcionariosWasabi (
    idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    nomeFuncionario VARCHAR(100) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    faixaSalarial VARCHAR(50) NOT NULL
);

INSERT INTO funcionariosWasabi (nomeFuncionario, cargo, faixaSalarial) VALUES
('Akira Yamamoto','Gerente de Produção','R$8.000 - R$10.000'),
('Renata Ishikawa','Especialista em Cultivo','R$6.000 - R$8.000'),
('Hiroshi Tanaka','Técnico em Automação','R$5.000 - R$7.000'),
('Marina Aoki','Engenheira Agrônoma','R$7.000 - R$9.000'),
('Yumi Sato','Analista de Qualidade','R$4.000 - R$6.000'),
('Kenji Watanabe','Supervisor de Estufa','R$5.500 - R$7.500'),
('Mayumi Kondo','Gerente de Logística','R$7.500 - R$9.500'),
('Kazuo Fujita','Técnico em Irrigação','R$4.500 - R$6.500'),
('Taro Ueda','Assistente de Pesquisa','R$3.500 - R$5.000'),
('Aiko Matsuda','Coordenadora de Marketing','R$6.500 - R$8.500');

SELECT * FROM funcionariosWasabi;
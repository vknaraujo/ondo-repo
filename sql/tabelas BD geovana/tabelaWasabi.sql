CREATE DATABASE empresaWasabi;
USE empresaWasabi;

CREATE TABLE empresa (
    idEmpresa INT AUTO_INCREMENT PRIMARY KEY,
    nomeEmpresa VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    dataFundacao DATE NOT NULL,
    fundador VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) NOT NULL,
    receitaAnual DECIMAL(15, 2) NOT NULL,
    descricao TEXT,
    numFuncionarios INT,
    setorMercado VARCHAR(100)
);

INSERT INTO empresa (nomeEmpresa, endereco, cidade, estado, telefone, dataFundacao, fundador, cnpj, receitaAnual, descricao, numFuncionarios, setorMercado) VALUES
('Wasabi Tech Ltda', 'Rua das Plantas, 123', 'São Paulo', 'SP', '(11) 98765-4321', '2015-04-10', 'Takashi Nakamura', '12.345.678/0001-99', 5000000.00, 'Empresa especializada na produção de wasabi em estufas, utilizando tecnologias avançadas para otimizar o cultivo e a qualidade do produto.', 50, 'Agronegócio e Tecnologia');

SELECT nomeEmpresa,
    CONCAT(
        'Nome da Empresa: ', nomeEmpresa, '\n', -- '\n' é usado para inserir uma quebra de linha
        'Endereço: ', endereco, ', ', cidade, ' - ', estado, '\n',
        'Telefone: ', telefone, '\n',
        'Data de Fundação: ', DATE_FORMAT(dataFundacao, '%d/%m/%Y'), '\n', -- DATE_FORMAT, função para formatar a data de acordo com o padrão desejado
        'Fundador: ', fundador, '\n',
        'CNPJ: ', cnpj, '\n',
        'Receita Anual: R$', FORMAT(receitaAnual, 2), '\n', -- FORMAT, função para formatar números decimais (como a receita anual) com duas casas decimais.
        'Descrição: ', descricao, '\n',
        'Número de Funcionários: ', numFuncionarios, '\n',
        'Setor de Mercado: ', setorMercado) AS descricaoCompleta
FROM empresa;

SELECT * FROM empresa;
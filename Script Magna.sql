CREATE DATABASE Magna;
USE Magna;

CREATE TABLE CadastroSite (
	idCadastroSite INT PRIMARY KEY AUTO_INCREMENT,
    nomeCompleto VARCHAR (100),
    email VARCHAR (100),
    telefone CHAR (13),
    senha CHAR (10),
    confirmacaoSenha CHAR (10)
);

CREATE TABLE CadastroEmpresa (
	idEmpresa INT AUTO_INCREMENT,
    nomeEmpresa VARCHAR (50),
    cnpjEmpresa CHAR (14),
    telefoneEmpresa CHAR (13),
    emailEmpresa VARCHAR (110),
    logradouroEmpresa VARCHAR (100),
    numeroEmpresa INT,
    cepEmpresa CHAR (8),
    cidadeEmpresa VARCHAR (45),
    estadoEmpresa VARCHAR (45),
    fkCadastro INT NOT NULL,
    PRIMARY KEY (idEmpresa, fkCadastro),
    FOREIGN KEY (fkCadastro) REFERENCES CadastroSite (idCadastroSite)
);

CREATE TABLE Shopping (
	idShopping INT AUTO_INCREMENT,
    nomeShopping VARCHAR (50),
    cidadeShopping VARCHAR (45),
    estadoShopping VARCHAR (45),
    logradouroShopping VARCHAR (100),
    cepShopping CHAR (8),
    numeroShopping INT,
    fluxoPessoasDiarias INT,
    capacidadeTotal INT,
    fkCadastroEmpresa INT,
    PRIMARY KEY (idShopping, fkCadastroEmpresa),
    FOREIGN KEY (fkCadastroEmpresa) REFERENCES CadastroEmpresa (idCadastroEmpresa)
);

CREATE TABLE Setor (
	idSetor INT AUTO_INCREMENT,
    qtdAssentosDisponiveis INT,
    comprimentoSetor INT,
    larguraSetor INT,
    apelidoSetor VARCHAR (30),
    fkShopping INT,
    PRIMARY KEY (idSetor, fkShopping),
    FOREIGN KEY (fkShopping) REFERENCES Shopping (idShopping)
);

CREATE TABLE Dado (
	idDado INT,
    dataCapitura DATETIME,
    capitura CHAR (1) CHECK (capitura = "V" OR capitura = "F"),
    fkSetor INT,
    PRIMARY KEY (idSetor, fkShopping),
    FOREIGN KEY (fkSetor) REFERENCES Setor (idSetor)
);
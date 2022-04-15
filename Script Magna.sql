CREATE DATABASE Magna;
USE Magna;

CREATE TABLE CadastroSite (
	idCadastroSite INT PRIMARY KEY AUTO_INCREMENT,
    nomeCompleto VARCHAR (100),
    email VARCHAR (100),
    telefone CHAR (11),
    senha CHAR (10),
);

CREATE TABLE CadastroEmpresa (
	idEmpresa INT AUTO_INCREMENT,
    nomeEmpresa VARCHAR (50),
    cnpjEmpresa CHAR (14),
    telefoneEmpresa CHAR (11),
    emailEmpresa VARCHAR (110),
    numeroEmpresa INT CHECK (numeroEmpresa > 0),
    cepEmpresa CHAR (8),
    fkCadastro INT,
    PRIMARY KEY (idEmpresa, fkCadastro),
    FOREIGN KEY (fkCadastro) REFERENCES CadastroSite (idCadastroSite)
);

CREATE TABLE Shopping (
	idShopping INT AUTO_INCREMENT,
    nomeShopping VARCHAR (50),
    cepShopping CHAR (8),
    numeroShopping INT CHECK (numeroShopping > 0),
    fluxoPessoasDiarias INT CHECK (fluxoPessoasDiarias > 0),
    capacidadeTotal INT CHECK (fluxoPessoasDiarias > 0),
    fkCadastroEmpresa INT,
    PRIMARY KEY (idShopping, fkCadastroEmpresa),
    FOREIGN KEY (fkCadastroEmpresa) REFERENCES CadastroEmpresa (idCadastroEmpresa)
);

CREATE TABLE Setor (
	idSetor INT AUTO_INCREMENT,
    qtdAssentosDisponiveis INT,
	metroQuadradoLocal DECIMAL (10,3) CHECK (metroQuadradoLocal > 0),
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

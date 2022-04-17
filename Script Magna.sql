CREATE DATABASE Magna;
USE Magna;

CREATE TABLE CadastroSite (
	idCadastroSite INT PRIMARY KEY AUTO_INCREMENT,
    nomeCompleto VARCHAR (100),
    email VARCHAR (100),
    telefone CHAR (11),
    senha CHAR (10)
);

CREATE TABLE CadastroEmpresa (
	idEmpresa INT AUTO_INCREMENT,
    nomeEmpresa VARCHAR (50),
    cnpjEmpresa CHAR (14),
    telefoneEmpresa CHAR (11),
    emailEmpresa VARCHAR (110),
    numeroEmpresa INT,
    cepEmpresa CHAR (8),
    fkCadastro INT,
    PRIMARY KEY (idEmpresa, fkCadastro),
    FOREIGN KEY (fkCadastro) REFERENCES CadastroSite (idCadastroSite)
);

CREATE TABLE Shopping (
	idShopping INT PRIMARY KEY AUTO_INCREMENT,
    nomeShopping VARCHAR (50),
	cnpjShopping CHAR (14),
    cepShopping CHAR (8),
    numeroShopping INT,
    fluxoPessoasDiarias INT,
    capacidadeTotal INT,
    fkCadastroEmpresa INT,
    FOREIGN KEY (fkCadastroEmpresa) REFERENCES CadastroEmpresa (idEmpresa)
);

CREATE TABLE Setor (
	idSetor INT AUTO_INCREMENT,
    qtdAssentosDisponiveis INT,
	metroQuadradoLocal DECIMAL (10,3),
    apelidoSetor VARCHAR (30),
    fkShopping INT,
    PRIMARY KEY (idSetor, fkShopping),
    FOREIGN KEY (fkShopping) REFERENCES Shopping (idShopping)
);

CREATE TABLE Sensor (
	idSensor INT,
    apelido VARCHAR (45),
    fkSetor INT,
    PRIMARY KEY (idSensor, fkSetor),
    FOREIGN KEY (fkSetor) REFERENCES Setor (idSetor)
);

CREATE TABLE Dado (
	idDado INT,
    dataCapitura DATETIME,
    capitura CHAR (1) CHECK (capitura = "V" OR capitura = "F"),
    fkSensor INT,
    PRIMARY KEY (idDado, fkSensor),
    FOREIGN KEY (fkSensor) REFERENCES Sensor (idSensor)
);

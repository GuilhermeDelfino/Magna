CREATE DATABASE Magna;
USE Magna;

CREATE TABLE Shopping (
	idShopping INT PRIMARY KEY AUTO_INCREMENT,
    nomeShopping VARCHAR (100),
    cnpj CHAR (14),
    emailShopping CHAR (100),
    telefoneShopping CHAR (11),
    senhaShopping CHAR (10),
    cep CHAR (8),
    numeroEndereco VARCHAR (10)
);

CREATE TABLE Usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nomeUsuario VARCHAR (100),
    emailUsuario VARCHAR (100),
    senhaUsuario CHAR (10),
    fkShopping INT,
    FOREIGN KEY (fkShopping) REFERENCES Shopping (idShopping)
);

CREATE TABLE Setor (
	idSetor INT,
    assentosDisponiveis INT,
    tamanhoLocal DECIMAL (10,3),
    apelidoSetor VARCHAR (30),
    fkShopping INT,
    PRIMARY KEY (idSetor, fkShopping),
    FOREIGN KEY (fkShopping) REFERENCES Shopping (idShopping)
);

CREATE TABLE Sensor (
	idSensor INT,
    apelidoSensor VARCHAR (45),
    fkSetor INT,
    PRIMARY KEY (idSensor, fkSetor),
    FOREIGN KEY (fkSetor) REFERENCES Setor (idSetor)
);

CREATE TABLE Registro (
	idRegistro INT AUTO_INCREMENT,
    dataCaptura DATETIME,
    captura CHAR (10) CHECK (captura = 'ocupado' or captura = 'disponivel'),
    fkSensor INT,
    PRIMARY KEY (idRegistro, fkSensor),
    FOREIGN KEY (fkSensor) REFERENCES Sensor (idSensor)
);
CREATE DATABASE cotidie;

USE cotidie;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
    fkOpcao int,
    FOREIGN KEY (fkOpcao) REFERENCES opcaoLectio (idOpcao)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 

CREATE TABLE opcaoLectio (
	idOpcao INT PRIMARY KEY,
	nome VARCHAR(45)
);

INSERT INTO opcaoLectio VALUES (1, 'Liturgia Diária'),
							   (2, 'Um livro da Bíblia');
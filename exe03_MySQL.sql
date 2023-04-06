CREATE DATABASE db_escola;

CREATE TABLE tb_estudantes(
	nome varchar(30),
    nota DECIMAL,
    ano INT,
    idade INT,
    materia varchar(10),
    
    PRIMARY KEY(nome)
    
);

INSERT INTO tb_estudantes(nome,nota,ano,idade,materia)
VALUEs("Rafael",5.5,2,16,"matemática");

INSERT INTO tb_estudantes(nome,nota,ano,idade,materia)
VALUEs("Fernanda",8.5,1,15,"história");

INSERT INTO tb_estudantes(nome,nota,ano,idade,materia)
VALUEs("Felipe",9.5,1,15,"matemática");

INSERT INTO tb_estudantes(nome,nota,ano,idade,materia)
VALUEs("Vinicius",4.7,6,12,"matemática");

INSERT INTO tb_estudantes(nome,nota,ano,idade,materia)
VALUEs("Gabriella",3.2,2,16,"matemática");

INSERT INTO tb_estudantes(nome,nota,ano,idade,materia)
VALUEs("Ana",10.0,2,16,"física");

INSERT INTO tb_estudantes(nome,nota,ano,idade,materia)
VALUEs("Luiz",9.8,3,17,"matemática");

INSERT INTO tb_estudantes(nome,nota,ano,idade,materia)
VALUEs("Lourdes",1.5,3,17,"sociologia");

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7;

SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes
SET nota = 8.0
WHERE nome = "Vinicius";
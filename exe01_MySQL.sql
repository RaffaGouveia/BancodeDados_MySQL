CREATE DATABASE db_rh;

CREATE TABLE tb_colaboradores(
	id bigInt AUTO_INCREMENT,
    nome varchar(255),
    cargo varchar(255),
    setor varchar(255),
    salario DECIMAL(8,2),
    
    PRIMARY KEY (id)
    );

INSERT INTO tb_colaboradores(nome, cargo, setor, salario)
VALUE("Rafael","Desenvolvedor","TI",3000.52);

INSERT INTO tb_colaboradores(nome, cargo, setor, salario)
VALUE("Adriane","Supervisora","TI",4500.52);

INSERT INTO tb_colaboradores(nome, cargo, setor, salario)
VALUE("Fernanda","Estagiaria","TI",1500.52);

INSERT INTO tb_colaboradores(nome, cargo, setor, salario)
VALUE("Felipe","Estagiario","TI",1500.52);

INSERT INTO tb_colaboradores(nome, cargo, setor, salario)
VALUE("Lourdes","Gerente","TI",9000.52);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores
SET salario = 3500.52
WHERE id = 1;
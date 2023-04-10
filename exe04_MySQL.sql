CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment,
    classe varchar (255),
    raca varchar (255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(
	id bigint auto_increment,
    nome varchar (255),
    idade int,
    defesa int,
    ataque int,
    classe_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes (id)
);

INSERT INTO tb_classes (classe, raca)
VALUE("Bárbaro", "Orc");

INSERT INTO tb_classes (classe, raca)
VALUE("Espadachim", "Humano");

INSERT INTO tb_classes (classe, raca)
VALUE("Mago", "Elfo");

INSERT INTO tb_classes (classe, raca)
VALUE("Paladino", "Anjo");

INSERT INTO tb_classes (classe, raca)
VALUE("Bardo", "Orc");

INSERT INTO tb_personagens(nome, idade, defesa, ataque,classe_id)
VALUES("Adriane", 250, 3000, 1500, 4);

INSERT INTO tb_personagens(nome, idade, defesa, ataque,classe_id)
VALUES("Gustavo", 38, 2000, 3500, 1);

INSERT INTO tb_personagens(nome, idade, defesa, ataque,classe_id)
VALUES("Jess", 20, 1000, 2500, 3);

INSERT INTO tb_personagens(nome, idade, defesa, ataque,classe_id)
VALUES("Jonatas", 53, 1500, 4000, 2);

INSERT INTO tb_personagens(nome, idade, defesa, ataque,classe_id)
VALUES("Larissa", 125, 2500, 1000, 4);

INSERT INTO tb_personagens(nome, idade, defesa, ataque,classe_id)
VALUES("Rafael", 18, 2000, 1000, 5);

INSERT INTO tb_personagens(nome, idade, defesa, ataque,classe_id)
VALUES("Aline", 28, 1000, 4000, 4);

INSERT INTO tb_personagens(nome, idade, defesa, ataque,classe_id)
VALUES("Diogo", 58, 3000, 4000, 1);

SELECT * FROM tb_classes;

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa >= 1000 && defesa <= 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.id = 4;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.classe LIKE "%o%";
CREATE DATABASE db_generation_gameonline;

USE db_generation_gameonline;

CREATE TABLE tb_classes (
id BIGINT auto_increment,
nameclass VARCHAR(255) NOT NULL,
tipo VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes (nameclass,tipo)
VALUES ("Guerreiro","tanque"),
("Mago","Mágico"),
("Atirador","Range"),
("Noviço","Suporte"),
("Assassino","Melee");

CREATE TABLE tb_personagens (
    personagem_id INT PRIMARY KEY auto_increment,
    nome VARCHAR(50) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    id BIGINT,
    FOREIGN KEY (id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome,nivel,poder_ataque,poder_defesa,id)
VALUES ("Caitlyn",26,260,64,3),
("Leona",21,58,232,1),
("Ahri",28,283,43,2),
("Soraka",24,40,101,4),
("Kalista",27,271,32,1),
("Katarina",24,310,91,5),
("Akali",19,131,63,5),
("Poppy",23,41,309,1);

SELECT * FROM tb_personagens WHERE poder_ataque > 200;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 100 AND 200;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id = tb_classes.id;

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id = tb_classes.id
WHERE tb_classes.nameclass = 'Atirador';

UPDATE tb_personagens
SET id = 3
WHERE nome = "Kalista";

SET SQL_SAFE_UPDATES = 0;
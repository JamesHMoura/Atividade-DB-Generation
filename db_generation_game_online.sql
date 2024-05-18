CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;


CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
	classe VARCHAR(255) NOT NULL,
    equipamento VARCHAR(255),
    PRIMARY KEY(id)
);


CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    raca VARCHAR(255) NOT NULL,
    hp BIGINT,
    ataque BIGINT,
    defesa BIGINT,
    classe_id BIGINT,
    PRIMARY KEY (id)
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classe
FOREIGN KEY (classe_id) REFERENCES tb_classes(id);

SELECT * FROM tb_personagens;

INSERT INTO tb_classes(classe, equipamento)
VALUES ("Ranger","Arco e Aljava"),
("Barbaro","Machado de Guerra"),
("Guerreiro","Espada Longa"),
("Mago","Cajado"),
("Ladino","Adaga e Lock&Pick");

INSERT INTO tb_personagens(nome, raca, hp, ataque, defesa, classe_id)
VALUES("Bilbo Bolseiro","Hobbit",800,1000,1500,5),
("Gandalf","Humano",3000,7000,4000,4),
("Aragorn","Humano",3000,5000,2000,3),
("Legolas","Elfo",5000,6000,1000,1),
("Gimli","Anão",3500,4000,3000,2),
("Gollum","Hobbit",300,1000,1000,5),
("Galadriel","Elfo",9000,7000,7000,4),
("Saruman","Humano",4000,7000,5000,4);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa > 1000 AND defesa < 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens WHERE nome LIKE "g%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.id = 1;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id WHERE 
tb_classes.classe LIKE "mago%";

SELECT nome,raca,classe FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;



create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
disponibilidade varchar(100) not null,
tipo varchar(100) not null,
ativo boolean,
primary key (id)
);

INSERT INTO tb_classe (disponibilidade, tipo, ativo) values ("Disponivel","Aventura", true);
INSERT INTO tb_classe (disponibilidade, tipo, ativo) values ("Disponivel","Ação", true);
INSERT INTO tb_classe (disponibilidade, tipo, ativo) values ("Disponivel","Moda", true);
INSERT INTO tb_classe (disponibilidade, tipo, ativo) values ("Suspenso","Sem dado", true);
INSERT INTO tb_classe (disponibilidade, tipo, ativo) values ("Desativado","Sem dado", true);

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(100) not null,
ano_lancamento int, 
ataque int,
defesa int,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_classe(id)
);

INSERT INTO tb_personagem (nome, ano_lancamento, ataque , defesa, categoria_id) values ("Super Mario", 1985, 3000, 200, 1);
INSERT INTO tb_personagem (nome, ano_lancamento, ataque , defesa, categoria_id)values ("Tartaruga Ninja", 1984, 1000, 1500, 2);
INSERT INTO tb_personagem (nome, ano_lancamento, ataque , defesa, categoria_id) values ("Barbie", 1991, 100, 100, 3);
INSERT INTO tb_personagem (nome, ano_lancamento, ataque , defesa, categoria_id) values ("Call of Duty", 2003, 5000, 10000, 2);
INSERT INTO tb_personagem (nome, ano_lancamento, ataque , defesa, categoria_id) values ("Among Us", 2018, 1000, 900, 1);
INSERT INTO tb_personagem (nome, ano_lancamento, ataque , defesa, categoria_id) values ("Rainbow Six Extraction", 2022, 6000, 6100, 4);
INSERT INTO tb_personagem (nome, ano_lancamento, ataque , defesa, categoria_id) values ("Elden Ring", 2022, 7000, 7100, 1);
INSERT INTO tb_personagem (nome, ano_lancamento, ataque , defesa, categoria_id) values  ("Gran Turismo 7", 2022, 9000, 1000, 5);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between  1000 and 2000;

select * from tb_personagem where nome like "%C%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id where tb_classe.id = 1;

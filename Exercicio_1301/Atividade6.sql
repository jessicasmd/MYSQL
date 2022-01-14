create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint not null auto_increment,
tipo varchar(300) not null,
quantidade int,
ativo boolean,
primary key (id)
);

INSERT INTO tb_categoria(tipo, quantidade, ativo) values ("Presencial", 30, true);
INSERT INTO tb_categoria(tipo, quantidade, ativo) values ("Online", 20, true);
INSERT INTO tb_categoria(tipo, quantidade, ativo) values ("Híbrido", 30, true);
INSERT INTO tb_categoria(tipo, quantidade, ativo) values ("Em breve", 2, true);
INSERT INTO tb_categoria(tipo, quantidade, ativo) values ("Desativado", 1, true);

select * from tb_categoria;

create table tb_produto(
id bigint not null auto_increment,
nome varchar(300) not null,
precot decimal(7,2) not null,
vagas int,
datainicio date,
datafim date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);
INSERT INTO tb_produto(nome, precot, vagas, datainicio, datafim, categoria_id) values ("Power BI Completo", 200.00, 60, "2022-02-01", "2022-04-01",2);
INSERT INTO tb_produto(nome, precot, vagas, datainicio, datafim, categoria_id) values ("Inglês", 1000.00, 10, "2022-02-17", "2023-02-01",1);
INSERT INTO tb_produto(nome, precot, vagas, datainicio, datafim, categoria_id) values ("Marketing Digital", 400.00, 10, "2022-02-03", "2022-03-01",3);
INSERT INTO tb_produto(nome, precot, vagas, datainicio, datafim, categoria_id) values ("Git e GitHub", 600.00, 30, "2022-02-06", "2022-08-01",4);
INSERT INTO tb_produto(nome, precot, vagas, datainicio, datafim, categoria_id) values ("Python e Java", 2000.00, 30, "2022-01-30", "2022-05-01",1);
INSERT INTO tb_produto(nome, precot, vagas, datainicio, datafim, categoria_id) values ("Arquitetura de redes", 800.00, 20, "2022-02-14", "2023-02-01",5);
INSERT INTO tb_produto(nome, precot, vagas, datainicio, datafim, categoria_id) values ("Redes TPC/IP", 50.00, 5, "2022-01-17", "2022-01-18",2);
INSERT INTO tb_produto(nome, precot, vagas, datainicio, datafim, categoria_id) values ("Azure", 200.00, 10, "2022-01-19", "2023-01-21",2);

select * from tb_produto;
select * from tb_produto where precot > 50;
select * from tb_produto where precot between 3 and 60;
select * from tb_produto where nome like "%J%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 2;

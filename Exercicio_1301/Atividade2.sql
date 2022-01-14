create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria (
id bigint not null auto_increment,
tamanho varchar(100) not null,
formato varchar(100) not null,
tipo varchar(100) not null,
primary key (id)
);

INSERT INTO tb_categoria (tamanho, formato, tipo) values ("Grande", "Redonda" , "Salgado");
INSERT INTO tb_categoria (tamanho, formato, tipo) values ("Média", "Redonda", "Salgado");
INSERT INTO tb_categoria (tamanho, formato, tipo) values ("Pequena", "Redonda", "Salgado");
INSERT INTO tb_categoria (tamanho, formato, tipo) values ("Média", "Quadrada", "Doce");
INSERT INTO tb_categoria (tamanho, formato, tipo) values ("Pequena", "Quadrada", "Doce");

select * from tb_categoria;

create table tb_pizza(
id bigint not null auto_increment,
nome_pizza varchar(100) not null,
precou decimal(6,2) not null,
quantidade int,
massa varchar(100) not null,
espessura varchar(100) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_pizza(nome_pizza, precou, quantidade, massa, espessura, categoria_id) values ("Atum", 49.99, 1, "Integral","fina",1);
INSERT INTO tb_pizza(nome_pizza, precou, quantidade, massa, espessura, categoria_id) values ("Portuguesa", 69.99, 2, "Tradicional", "padrão",2);
INSERT INTO tb_pizza(nome_pizza, precou, quantidade, massa, espessura, categoria_id) values ("Calabresa", 29.99, 1 , "Tradicional", "padrão",3);
INSERT INTO tb_pizza(nome_pizza, precou, quantidade, massa, espessura, categoria_id) values ("Marguerita", 29.99, 1,"Integral", "fina", 1);
INSERT INTO tb_pizza(nome_pizza, precou, quantidade, massa, espessura, categoria_id) values ("Frango com catupiry", 39.99, 1, "Tradional","padrão",1);
INSERT INTO tb_pizza(nome_pizza, precou, quantidade, massa, espessura, categoria_id) values	("Vegana", 29.99, 1, "Integral", "fina", 1);
INSERT INTO tb_pizza(nome_pizza, precou, quantidade, massa, espessura, categoria_id) values	("Chocolate com morango", 29.99, 1,"Tradicional", "fina", 4);
INSERT INTO tb_pizza(nome_pizza, precou, quantidade, massa, espessura, categoria_id) values("Beijinho", 29.99, 1,"Integral", "fina", 5);

select * from tb_pizza;
select * from tb_pizza where precou > 45.00;
select * from tb_pizza where precou between 29.00 and 60.00;
select * from tb_pizza where nome_pizza like "%C%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 5;
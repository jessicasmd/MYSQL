create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint not null auto_increment,
tipo varchar(300) not null,
ativo boolean,
primary key (id)
);

INSERT INTO tb_categoria(tipo, ativo) values ("Hidráulico", true);
INSERT INTO tb_categoria(tipo, ativo) values ("Ferramentas", true);
INSERT INTO tb_categoria(tipo, ativo) values ("Decoração", true);
INSERT INTO tb_categoria(tipo, ativo) values ("Móveis", true);
INSERT INTO tb_categoria(tipo, ativo) values ("Eletros", true);

select * from tb_categoria;

create table tb_produto(
id  bigint not null auto_increment,
nome varchar(300) not null,
preco decimal(7,2) not null,
quantidade int,
datacadastro timestamp,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);
INSERT INTO tb_produto(nome, preco, quantidade, datacadastro, categoria_id) values ("Martelo", 39.90, 30, current_date(), 2);
INSERT INTO tb_produto(nome, preco, quantidade, datacadastro, categoria_id) values ("Torneira", 169.90, 30, current_date(), 1);
INSERT INTO tb_produto(nome, preco, quantidade, datacadastro, categoria_id) values ("Ducha Redonda", 208.90, 50, current_date(), 1);
INSERT INTO tb_produto(nome, preco, quantidade, datacadastro, categoria_id) values ("Quadros", 99.90, 24, current_date(), 3);
INSERT INTO tb_produto(nome, preco, quantidade, datacadastro, categoria_id) values ("Mesa de jantar", 1499.90, 70, current_date(), 4);
INSERT INTO tb_produto(nome, preco, quantidade, datacadastro, categoria_id) values ("Cabeceira", 369.00, 90, current_date(), 4);
INSERT INTO tb_produto(nome, preco, quantidade, datacadastro, categoria_id) values ("Micro-ondas", 869.90, 30, current_date(), 5);
INSERT INTO tb_produto(nome, preco, quantidade, datacadastro, categoria_id) values ("Cooktop", 399.00, 30, current_date(), 5);

select * from tb_categoria;
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 1;

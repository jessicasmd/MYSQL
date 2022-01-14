create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id  bigint not null auto_increment,
nome_categorias varchar(100) not null, 
ativa boolean,
primary key (id)
);

INSERT INTO tb_categoria (nome_categorias, ativa) values ("Frutas doces",true);
INSERT INTO tb_categoria (nome_categorias, ativa) values ("Frutas semiácidas",true);
INSERT INTO tb_categoria (nome_categorias, ativa) values ("Frutas ácidas",true);
INSERT INTO tb_categoria (nome_categorias, ativa) values ("Frutas hiper-hídricas ou monofágicas",true);
INSERT INTO tb_categoria (nome_categorias, ativa) values ("Frutas oleaginosas",true);

select * from tb_categoria;

create table tb_produtos(
id bigint not null auto_increment,
nome varchar(300) not null,
preco decimal(7,2) not null,
quantidade int,
datacadastro timestamp,
datavalidade date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_produtos(nome, preco, quantidade, datacadastro, datavalidade, categoria_id) values ("Banana", 1.99, 12, current_date(), "2022-01-20", 1);
INSERT INTO tb_produtos(nome, preco, quantidade, datacadastro, datavalidade, categoria_id) values ("Maracuja", 3.99, 10, current_date(), "2022-01-27",2);
INSERT INTO tb_produtos(nome, preco, quantidade, datacadastro, datavalidade, categoria_id) values ("Amora", 6.99, 20, current_date(), "2022-01-30",3);
INSERT INTO tb_produtos(nome, preco, quantidade, datacadastro, datavalidade, categoria_id) values ("Melancia", 3.50, 30, current_date(), "2022-01-30",4);
INSERT INTO tb_produtos(nome, preco, quantidade, datacadastro, datavalidade, categoria_id) values ("Abacate", 4.00, 20, current_date(), "2022-01-30",5);
INSERT INTO tb_produtos(nome, preco, quantidade, datacadastro, datavalidade, categoria_id) values("Pitanga", 61.00 , 10, current_date(), "2022-01-28",2);
INSERT INTO tb_produtos(nome, preco, quantidade, datacadastro, datavalidade, categoria_id) values("Fruta-do-conde", 70.00, 10, current_date(), "2022-01-24",2);
INSERT INTO tb_produtos(nome, preco, quantidade, datacadastro, datavalidade, categoria_id) values("Manga", 5.99, 10, current_date(), "2022-01-27",1);

select * from tb_produtos;
select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like "%C%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 2;

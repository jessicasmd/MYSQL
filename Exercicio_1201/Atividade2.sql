create database db_ecommerce;
use db_ecommerce;
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null, 
tipo varchar(255) not null, 
quantidade int,
preco decimal (10,2)not null,
Desconto int,
primary key (id)
);
INSERT INTO tb_produtos (nome, tipo, quantidade, preco, Desconto) values ("Secador de cabelo", "Beleza e Estética", 10, 300.00,5);
INSERT INTO tb_produtos (nome, tipo, quantidade, preco, Desconto) values ("Esmalte", "Beleza e Estética", 30, 1.99, 1);
INSERT INTO tb_produtos (nome, tipo, quantidade, preco, Desconto) values("Video Game", "Entretenimento", 6, 3000.00, 3);
INSERT INTO tb_produtos (nome, tipo, quantidade, preco, Desconto) values("Jogos de tabuleiro", "Entretenimento", 8, 300.00, 10);
INSERT INTO tb_produtos (nome, tipo, quantidade, preco, Desconto) values("Sofá", "Móveis", 4, 3500.00, 7);
INSERT INTO tb_produtos (nome, tipo, quantidade, preco, Desconto) values("Cama", "Móveis", 3, 2700.00, 5);
INSERT INTO tb_produtos (nome, tipo, quantidade, preco, Desconto) values("Bola de futebol", "Entretenimento", 4, 10.00, 2);
INSERT INTO tb_produtos (nome, tipo, quantidade, preco, Desconto) values("Mesa de jantar", "Móveis", 4, 1500.00, 20);

select nome, preco from tb_produtos where preco > 500.00;
select nome, preco from tb_produtos where preco < 500.00;

update tb_produtos set desconto = 15 where id = 8;
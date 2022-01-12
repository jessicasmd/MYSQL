create database db_RH;
use db_RH;
create table tb_funcionarios(
	id bigint auto_increment,
	nome varchar(300) not null, 
	funcao varchar(300) not null,
	salario decimal not null,
    bonificacao decimal not null,
    dependentes int,
    	primary key (id)
);

INSERT INTO tb_funcionarios(nome, funcao, salario, bonificacao, dependentes) values ("Ana Maria", "Diretora Senior", 10000.00, 1000, 2);
INSERT INTO tb_funcionarios(nome, funcao, salario, bonificacao, dependentes) values ("Rogerio Marcos","Secretário", 1999.00, 300, 2);
INSERT INTO tb_funcionarios(nome, funcao, salario, bonificacao, dependentes) values	("Cristina Dantes", "Dev Senior", 5000.00, 900, 2);
INSERT INTO tb_funcionarios(nome, funcao, salario, bonificacao, dependentes) values ("Debora Martis", "Dev Junior", 3000.00, 200, 1);
INSERT INTO tb_funcionarios(nome, funcao, salario, bonificacao, dependentes) values	("Barbara Nogueira", "Dev. Junior", 3000.00, 200,1);

select nome, salario from tb_funcionarios where salario > 2000.00;
select nome, salario from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set salario = 2100.00 where id = 2;
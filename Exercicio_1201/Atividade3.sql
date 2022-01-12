create database db_estudantes;
use db_estudantes;
create table tb_alunos(
	id bigint auto_increment,
	nome varchar(300) not null, 
	idade int,
    nota1 decimal not null,
    nota2 decimal not null,
    nota3 decimal not null,
    primary key (id)
    );
    
    INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) values ("Pedro", 15, 8,5,9);
    INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) values	("Claudia",14,6,7,8);
    INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) values	("Roberto", 16, 4,2,8);
    INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) values	("Pablo", 15, 9,9,9);
    INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) values ("Marilia", 14, 10,10,10);
    INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) values	("Josue", 15, 9,7,9);
    INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) values	("Renato", 15, 2,6,7);
    INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) values	("Maria", 15, 6,6,6);
    
    select nome,  nota3 from tb_alunos where nota3 > 7;
	select nome,  nota3 from tb_alunos where nota3  < 7;
    
    update tb_alunos set idade = 15 where id = 5;
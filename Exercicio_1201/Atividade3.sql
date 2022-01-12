create database db_estudantes;
use db_estudantes;
create table tb_alunos(
	id bigint auto_increment,
	nome varchar(300) not null, 
	idade int,
    nota1 (2,2)decimal not null,
    nota2 (2,2)decimal not null,
    nota3 (2,2)decimal not null,
    primary key (id)
    );
    
    INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) values ("Pedro", 15, 8.00,5.00,9.00);
    INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) values	("Claudia",14,6.00,7.00,8.00);
    INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) values	("Roberto", 16, 4.00,2.00,8.00);
    INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) values	("Pablo", 15, 9.00,9.00,9.00);
    INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) values ("Marilia", 14, 10.00,10.00,10.00);
    INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) values	("Josue", 15, 9.00,7.00,9.00);
    INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) values	("Renato", 15, 2.00,6.00,7.00);
    INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) values	("Maria", 15, 6.00,6.00,6.00);
    
    select nome,  nota3 from tb_alunos where nota3 > 7.00;
	select nome,  nota3 from tb_alunos where nota3  < 7.00;
    
    update tb_alunos set idade = 15 where id = 5;
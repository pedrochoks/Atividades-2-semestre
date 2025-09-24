create database Escola;
use Escola;

create table Alunos(
	IdAluno int primary key,
	Nome nvarchar(100),
	Idade char(3),
	Cidade nvarchar(100)
);
insert into Alunos(IdAluno, Nome, Idade, Cidade)
values
(1, 'Pedro Silva', 18, 'São Paulo'),
(2, 'Mariana Oliveira', 20, 'Rio de Janeiro'),
(3, 'Lucas Costa', 19, 'Belo Horizonte'),
(4, 'Ana Beatriz Souza', 21, 'Curitiba'),
(5, 'Gabriel Martins', 22, 'Porto Alegre'); 

select * from Alunos

select * from Alunos
where idade >20

select * from Alunos
where cidade like 'Curitiba'
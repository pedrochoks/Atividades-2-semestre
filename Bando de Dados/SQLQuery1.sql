-- Apagar base de dados ja existente
DROP DATABASE Empresa;

--Criar base de dados Empresa
CREATE DATABASE Empresa;

--Acessar a base de dados criada
USE Empresa;

--Cria tabela Funcionario
CREATE TABLE Funcionario(
	Codigo int primary key,
	Nome NVARCHAR(100)
);

--Inserindo valores em uma tabela
insert into Funcionario (Codigo, Nome)
values
(1, 'Kessia'),
(2, 'Thiago')

-- Outro metodo
insert into Funcionario values
(3, 'Odirlei')

--Listar dados inseridos
select * from Funcionario;

-- Listar nomes de funcionarios
select Nome, Codigo FROM Funcionario;

-- Listar funcionarios com cod > 2
select * from Funcionario
where Codigo > 2;

-- Listar funcionarios que comecam com a letra T
select * from Funcionario
where Nome like 'T%';

-- Listar funcionarios que terminam com a letra A
select * from Funcionario
where Nome like '%a';

-- Ordenar valores decrescente
select * from Funcionario
order by Codigo desc

-- Ordenar por letra ( Ordem alfabetica)
select * from Funcionario
order by Nome asc

-- Desc = decrescente 
-- Asc = Crescente

-- Atualizacao de registro
update Funcionario set Nome = 'Kessia Milena'
where Nome = 'Kessia'

select * from Funcionario

-- Atualizacao sem update ( nao fazer)
-- Sem where muda TODOS os dados
update Funcionario set Nome = 'Thiago'

-- exclusao de dados
delete from Funcionario
where Codigo = 3;
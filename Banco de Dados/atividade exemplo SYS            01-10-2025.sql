use clinica_medica;

--Visualizar tabelas da base da dados (clinica medica)
select * from sys.tables;

select name, create_date, modify_date
from sys.tables;

--Visualizar as colunas da tabela
select * from sys.columns
where object_id = object_id('Paciente');

--Visualizar os tipos de dados do sistema
select * from sys.types;

-- Consulta de todos juntos com o JOIN
select tabelas.name as Tabela, colunas.name as Coluna, 
tipo.name as Tipo, colunas.max_length as Tamanho, 
colunas.is_nullable as PermiteNulo
from sys.tables tabelas
join sys.columns colunas on tabelas.object_id = colunas.object_id
join sys.types tipo on colunas.user_type_id = tipo.user_type_id
order by tabelas.name, colunas.column_id

select * from information_schema.columns


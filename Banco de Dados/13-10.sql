use BIBLIOTECA2

select * from Livro;
select * from Leitor;
select * from Emprestimo;
select * from Autor;

select count(*) as NumeroDeLivros
from Livro;

select avg(ano) as AnoMedio
from Livro;

select l.nome, count(e.id_emprestimo) AS QtdEmprestimo
from Emprestimo e
JOIN Leitor l ON l.id_Leitor = e.id_Leitor
GROUP BY l.nome	
order by QtdEmprestimo desc

select * from Autor;

select left(nome, 3) As PrimeirasTresLetrasAutores from autor;

select lower(titulo) from Livro;

select * from leitor
where email like '%.com'

select replace (titulo, 'A hora da estrela', 'A hora da sol')
from Livro;

select data_emprestimo,
year(data_emprestimo) as Ano,
month(data_emprestimo) as Mes
from Emprestimo
where year(data_emprestimo) = 2025 and
month(data_emprestimo) = 8;

select id_Emprestimo, data_emprestimo, data_devolucao,
datediff(day, data_emprestimo, isnull(data_devolucao, getdate()))
as DiasComOLivro
from emprestimo;

set language Portuguese;
select data_emprestimo From Emprestimo
select datename(weekday, data_emprestimo) AS DiaDaSemana
from Emprestimo

SELECT id_Livro, Titulo, Ano, id_Autor
FROM Livro
WHERE ano BETWEEN 1950 AND 2005 
AND
id_Autor NOT LIKE 3

select * from Leitor
where nome like 'C%'

select * from Emprestimo
where data_devolucao like null

select Titulo
from Autor
left join Livro
on Autor.id_Autor = Livro.id_Autor


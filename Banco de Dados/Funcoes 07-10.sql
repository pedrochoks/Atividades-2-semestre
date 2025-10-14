-- COUNT: contar o total de registros

select * from Leitor;

select count(*)
from Leitor;

select * from Emprestimo;

--COUNT + GROUP BY
-- ( Funcao agregada precisa do group by para mais atributos)

select l.nome, count(e.id_emprestimo) AS QtdEmprestimo
from Emprestimo e
JOIN Leitor l ON l.id_Leitor = e.id_Leitor
GROUP BY l.nome	

-- MIN / MAX
select Ano from Livro;

SELECT MIN(Ano) AS MenorAno FROM Livro;
SELECT MAX(Ano) AS MaiorAno FROM Livro;

--FUNCOES DE TEXTO

-- LEN
-- Retorna a quantidade de caracteres ( incluindo espacos)
SELECT LEN('Kessia') AS TamanhoString;
SELECT nome, LEN(nome) from Autorl;

-- UPER (maiusculo) / Lower (minusculo)
SELECT UPPER(nome) FROM Leitor;
SELECT LOWER(email) FROM Leitor;

-- LEFT(esquerda) / RIGHT(direita)
-- Pega as letras a esquerda e direita
select * from Livro;

select left(titulo, 5) AS Primeiros5 from Livro;
select right(titulo, 5) AS Ultimos5 From livro;

--Replace
-- Troca caracteres
Select * from Livro;

--replace(nome_atributo, valorinicial, valorfinal)
select replace (titulo, 'Harry', 'Hermione')
FROM Livro;

--CHARINDEX
--Localizar a posicao de alguma palavra

SELECT titulo, CHARINDEX('uma', titulo) AS Posicaotexto
from Livro;

-- CONCAT:
-- CONCATENAR textos
--select e.id_Emprestimo, le.nome, li.titulo

select CONCAT('Emprestimo ', e.id_Emprestimo,
' - Leitor: ', le.nome, ' - Livro: ', li.titulo)
FROM Emprestimo e
JOIN Leitor le ON le.id_Leitor = e.id_Leitor
JOIN Livro li ON li.id_Livro = e.id_Livro



--SUBSTRING
-- Mostra o texto conforme o tamanho passado
SELECT SUBSTRING(titulo, 1, 10)
from Livro

--RTRIM(direita) / LTRIM(esquerda) / TRIM ( dos dois lados)
select Nome, RTRIM(nome), LTRIM(nome), TRIM(nome)
FROM Leitor;

-- Funcoes de Data e Hora

-- GETDATE
--dia e horario atual
-- DA INSTANCIA
SELECT GETDATE();

SELECT SYSDATETIMEOFFSET()
AT TIME ZONE 'E. South America Standard Time';

use BIBLIOTECA2;

-- DATEADD: Adiciona uma tempo dentro de uma data selecioanada
-- YEAR: ANO | MONTH: MES | DAY: DIA | WEEK: SEMANA
Select id_Emprestimo, data_emprestimo,
DATEADD(DAY, 7, data_emprestimo) AS PrevisaoDevolucao
FROM Emprestimo;

-- Diminuir o tempo
Select id_Emprestimo, data_emprestimo,
DATEADD(MONTH, -1, data_emprestimo) AS PrevisaoDevolucao
FROM Emprestimo;

-- DATEDIFF: diferenca entre datas
select id_emprestimo, data_emprestimo, data_devolucao,
DATEDIFF(DAY, data_emprestimo, ISNULL(data_devolucao, GETDATE()))
AS DiasComLivro
FROM Emprestimo;
-- se data_devolucao estiver vazio, ele acrescenta o
-- GETDATE para inserir a data atual e comparar com a
-- data emprestimo .

-- FORMAT: FORMATAR DATAS
SELECT * FROM Emprestimo;

SELECT
FORMAT(data_emprestimo, 'dd/MM/yyyy' ) AS Emprestimo,
FORMAT(data_devolucao, 'dd/MM/yy') AS Devolucao
FROM Emprestimo;

-- Extrair ano, mes e dia de uma data:
SELECT data_emprestimo,
YEAR(data_emprestimo) AS Ano,
MONTH(data_emprestimo) AS Mes,
DAY(data_emprestimo) AS Dia
FROM Emprestimo;


SET LANGUAGE Portuguese;
-- DATEPART / DATENAME
SELECT DATEPART(MONTH, data_emprestimo) AS Mes,
	   DATEPART(weekday, data_emprestimo) AS DiaSemana,
	   DATENAME(weekday, data_emprestimo) AS NomeDiaSemana,
	   DATENAME(MONTH, data_emprestimo) AS NomeMes
FROM Emprestimo;

-- OPERADORES DE COMPARACAO

-- (Igualdade) =
SELECT titulo, ano
FROM Livro
WHERE ano = 2000;

-- (diferente) NOT LIKE
SELECT nome, email
FROM Leitor
WHERE email not like 'kes%'

SELECT titulo, ano
FROM Livro
WHERE ano <> 2000;

SELECT titulo, ano
FROM Livro
WHERE ano != 2000;

-- (maior que) >
SELECT titulo, ano
from Livro
WHERE ano > 1900

-- (menor que) <
SELECT titulo, ano
from livro
where ano < 1900

-- (maior ou igual) >=
SELECT id_emprestimo, data_emprestimo
FROM Emprestimo
WHERE data_emprestimo >= '2025-09-01'

-- (menor ou igual) <=
SELECT id_emprestimo, data_emprestimo
from Emprestimo
where data_emprestimo <= '2025-08-31'

-- OPERADORES LOGICOS

-- AND (E)
SELECT emprestimo.id_Emprestimo, leitor.nome,
emprestimo.data_emprestimo, emprestimo.data_devolucao
FROM Emprestimo
JOIN Leitor ON leitor.id_Leitor = Emprestimo.id_Leitor
WHERE MONTH(emprestimo.data_emprestimo) = 9
AND YEAR(emprestimo.data_emprestimo) = 2025
-- DUAS CONDICOES PRECISAM SER VERDADEIRAS

SELECT * FROM Emprestimo
SELECT * FROM Livro

-- OR (ou)
SELECT l.titulo, l.ano, a.nome
FROM Livro l
JOIN Autor a ON a,id_Autor = l.id_Autor
WHERE a.nome = 'Machado de Assis'
OR a.nome = 'Clarisse Lispector'
-- Uma condicao sendo verdadeira, ja retorna o valor

-- NOT (negacao)
SELECT l.titulo, l.ano, a.nome
FROM Livro l
JOIN Autor a ON a.id_Autor = l.id_Autor
WHERE NOT a.nome = 'Shakespeare'

-- OPERADORES ESPECIAIS

--BETWEEN (entre)
SELECT titulo, ano
FROM Livro
Where ano BETWEEN 1900 AND 2000

-- IN (verifica uma lista de valores)
SELECT * FROM Autor
WHERE nome IN ('Machado de Assis', 'Shakespeare');

-- LIKE
select titulo
FROM Livro
Where titulo like 'O%'
-- Porcentagem antes da letra - existe texto antes daquela letra
-- Porcentagem depois da letra - existe texto depois da letra
-- Porcentagem entre a letra - existe texto antes e depois da letra

-- IS NULL
-- Registros vazios
SELECT id_Emprestimo, id_Livro, data_emprestimo
FROM Emprestimo
WHERE data_devolucao IS NULL;

-- IS NOT NULL
SELECT id_emprestimo, id_Livro, data_emprestimo
FROM Emprestimo
WHERE data_devolucao IS NOT NULL;
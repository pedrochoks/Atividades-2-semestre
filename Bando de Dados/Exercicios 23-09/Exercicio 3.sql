Create database Biblioteca_Virtual
use Biblioteca_Virtual

CREATE TABLE Livro (
    IdLivro INT PRIMARY KEY,
    Titulo VARCHAR(100),
    Autor VARCHAR(100),
    AnoPublicacao INT
);

INSERT INTO Livro (IdLivro, Titulo, Autor, AnoPublicacao) VALUES
(1, 'Dom Casmurro', 'Machado de Assis', 1899),
(2, 'O Corti�o', 'Alu�sio Azevedo', 1890),
(3, 'Vidas Secas', 'Graciliano Ramos', 1938),
(4, 'A Hora da Estrela', 'Clarice Lispector', 1977),
(5, 'Mem�rias P�stumas de Br�s Cubas', 'Machado de Assis', 1881),
(6, 'Capit�es da Areia', 'Jorge Amado', 1937),
(7, 'A Sombra do Vento', 'Carlos Ruiz Zaf�n', 2001),
(8, 'A Menina que Roubava Livros', 'Markus Zusak', 2005),
(9, 'O C�digo Da Vinci', 'Dan Brown', 2003),
(10, 'Torto Arado', 'Itamar Vieira Junior', 2019),
(11, 'Sapiens: Uma Breve Hist�ria da Humanidade', 'Yuval Noah Harari', 2011),
(12, '� Assim que Acaba', 'Colleen Hoover', 2016);

Select * from Livro
where AnoPublicacao > 2010

Select * From livro 
where Autor like 'Machado de Assis'

Select Titulo from livro

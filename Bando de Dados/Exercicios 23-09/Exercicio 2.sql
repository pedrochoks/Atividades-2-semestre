create database Loja_games;
use Loja_games;

create table Jogo(
    IdJogo INT PRIMARY KEY,
    Titulo VARCHAR(100),
    Genero VARCHAR(50),
    Preco DECIMAL(10,2)
);

INSERT INTO Jogo (IdJogo, Titulo, Genero, Preco) VALUES
(1, 'Aventura Espacial', 'Aventura', 79.90),
(2, 'Corrida Radical', 'Corrida', 59.90),
(3, 'Mistério na Mansão', 'Suspense', 49.90),
(4, 'Heróis do Reino', 'RPG', 99.90),
(5, 'Futebol Total', 'Esporte', 69.90),
(6, 'Tiro Cibernético', 'FPS', 89.90);

select * from Jogo 
where Genero Like 'FPS'

insert into Jogo values
(7, 'todos contra um', 'FPS', 240.90);

select * from Jogo
where Preco > 200.00

select * from Jogo


create database Shows_de_Musica
go
use Shows_de_Musica

create table Artista (
Id_art int primary key,
Nome Nvarchar (100)
);

insert into Artista (Id_art, Nome) values
(1, 'Luna Andrade'),
(2, 'Raphael Monteiro'),
(3, 'Isabela Vasques'),
(4, 'Caio Figueiredo'),
(5, 'Helena Duarte'),
(6, 'Enzo Martins'),
(7, 'Auroro Silveira'),
(8, 'Gabriel Fontes'),
(9, 'Miguel Azevedo'),
(10, 'Clara Nogueira'),
(11, 'Thiago Lins'),
(12, 'Nelson Golcalves');

create table Album (
Id_album int primary key,
Titulo nvarchar(100),
ano int,
Id_Artista int foreign key references artista (Id_art)
);

insert into Album (Id_album, Titulo, ano, Id_Artista) values
(1,'Horizontes Infinitos', 2020, 1),  
(2,'Ruas da Madrugada', 2019, 2),     
(3,'Versos do Vento', 2021, 3),        
(4,'Som das Montanhas', 2018, 4),      
(5,'Marés Eternas', 2022, 5),         
(6,'Caminhos da Alma', 2017, 6),    
(7,'Luz e Sombra', 2023, 7),          
(8,'Ritmo Urbano', 2021, 8),          
(9,'Estrelas Perdidas', 2020, 9),     
(10,'Raízes do Tempo', 2019, 10),       
(11,'Entre Céu e Mar', 2022, 11),     
(12,'Fragmentos', 2018, 12);           

create table Faixa (
Id_faixa int primary key,
Titulo nvarchar (100),
Id_Album int foreign key references Album(Id_album)
);

insert into Faixa (Id_faixa, Titulo, Id_album) values
--Album 1
(1,'Além do Horizonte', 1),
(2,'Sonhos em Movimento', 1),
(3,'Céu Aceso', 1),
(4,'Rios de Luz', 1),
(5,'Aurora do Coração', 1),
(6,'Planícies Infinitas', 1),
(7,'Luz da Manhã', 1),
(8,'Horizonte Final', 1),

--Album 2
(9,'Noite Sem Fim', 2),
(10,'Cidade Desperta', 2),
(11,'Luzes de Neon', 2),
(12,'Caminhos Escuros', 2),
(13,'Ritmo da Rua', 2),

--Album 3
(14,'Sopro do Destino', 3),
(15,'Chuva Serena', 3),
(16,'Pétalas ao Vento', 3),
(17,'Vozes Distantes', 3),
(18,'Lamento do Tempo', 3),
(19,'Melodia da Esperança', 3),

--Album 4
(20,'Trilhas Perdidas', 4),
(21,'Nascer do Sol', 4),
(22,'Eco da Floresta', 4),
(23,'Segredo da Serra', 4),
(24,'Refúgio Natural', 4),

--Album 5
(25,'Ondas do Amanhã', 5),
(26,'Mar Azul', 5),
(27,'Correntes Secretas', 5),
(28,'Luz do Farol', 5),
(29,'Profundezas', 5),
(30,'Tarde Serena', 5),
(31,'Canto das Águas', 5),

--Album 6
(32,'Alma Livre', 6),
(33,'Cicatrizes do Tempo', 6),
(34,'Chama Interior', 6),
(35,'Destino Incerto', 6),
(36,'Além de Mim', 6),

--Album 7
(37,'Sombras da Lua', 7),
(38,'Clarear', 7),
(39,'Entre a Escuridão', 7),
(40,'Reflexos', 7),
(41,'Círculo de Luz', 7),
(42,'Noite Branca', 7),
(43,'Contraste', 7),
(44,'Aurora Interior', 7),

--Album 8
(45,'Batida Forte', 8),
(46,'Ritmos da Cidade', 8),
(47,'Concreto Vivo', 8),
(48,'Som das Ruas', 8),
(49,'No Compasso', 8),
(50,'Vibrar Urbano', 8),

--Album 9
(51,'Constelação', 9),
(52,'Universo Paralelo', 9),
(53,'Noite Silenciosa', 9),
(54,'Luz Distante', 9),
(55,'Gravidade', 9),

--Album 10
(56,'Raízes Antigas', 10),
(57,'Memórias do Futuro', 10),
(58,'Caminho das Eras', 10),
(59,'Terra e Céu', 10),
(60,'Ciclos Eternos', 10),
(61,'Herança Viva', 10),
(62,'Legado do Tempo', 10),
(63,'Origem e Destino', 10),

--Album 11
(64,'Horizonte Azul', 11),
(65,'Segredos do Mar', 11),
(66,'Brisa Suave', 11),
(67,'Sol e Sal', 11),
(68,'Reflexo da Lua', 11),

--Album 12
(69,'Fragmentos da Vida', 12),
(70,'Caminho Sem Volta', 12),
(71,'Página em Branco', 12),
(72,'Sons do Silêncio', 12),
(73,'Fim do Ciclo', 12),
(74,'Horizonte Partida', 12);

create table Show (
Id_Show int primary key,
Id_art int foreign key references Artista (Id_art),
Data_Show date
);

insert into Show( Id_Show, Id_art, Data_Show) values
(1, 1, '2025-10-05'),
(2, 1, '2025-11-02'),

(3, 2, '2026-01-15'),
(4, 2, '2025-10-10'),
(5, 2, '2025-12-05'),
(6, 2, '2026-02-20'),

(7, 3, '2025-10-15'),
(8, 3, '2025-11-25'),
(9, 3, '2026-01-30'),

(10, 4, '2025-11-01'),
(11, 4, '2025-12-10'),
(12, 4, '2026-02-18'),
(13, 4, '2026-04-13'),
(14, 4, '2026-04-20'),

(15, 5, '2025-11-12'),
(16, 5, '2026-01-05'),
(17, 5, '2026-03-10'),

(18, 6, '2026-01-22'),
(19, 6, '2026-03-18'),

(20, 7, '2025-12-15'),
(21, 7, '2026-02-01'),
(22, 7, '2026-04-05'),

(23, 8, '2026-01-10'),
(24, 8, '2026-02-15'),
(25, 8, '2026-03-01'),
(26, 8, '2026-04-20'),

(27, 9, '2026-01-20'),
(28, 9, '2026-03-02'),
(29, 9, '2026-05-12'),

(30, 10, '2026-02-05'),
(31, 10, '2026-03-15'),
(32, 10, '2026-05-25'),
(33, 10, '2026-06-12'),
(34, 10, '2026-07-01'),

(35, 11, '2026-02-18'),
(36, 11, '2026-04-01'),
(37, 11, '2026-06-10'),

(38, 12, '2026-04-18'),
(39, 12, '2026-06-25'),
(40, 12, '2026-07-15'),
(41, 12, '2026-08-05');


select Nome, faixa.Titulo 
from Artista
join album on artista.Id_art = album.Id_Artista 
join faixa on faixa.Id_album = album.Id_album

SELECT * FROM Faixa;
SELECT * FROM Album;
SELECT * FROM Artista;
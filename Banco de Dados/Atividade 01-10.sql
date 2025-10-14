use Shows_de_Musica

select * from Album;
select * from Artista;
select * from Faixa;
select * from Show;

update Show set Data_Show = '2025-11-09'
where Id_Show = 37;

update Album set Titulo = 'O Som das Montanhas'
where Id_album = 4;

DELETE Faixa
where Id_faixa = 1

DELETE Faixa
where Id_faixa = 13 or Id_faixa = 10

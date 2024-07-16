-- 1
select nome, ano from Filmes

-- 2 

select nome, ano from Filmes
order by Ano;

--3

select Nome, Ano, Duracao from Filmes
where Nome = 'De Volta Para O Futuro';

--4
select Nome, Ano, Duracao from Filmes
where Ano = '1997';

--5

select Nome, Ano, Duracao from Filmes
where Ano >= 2000;

--6
select Nome, Ano, Duracao from Filmes
where Duracao > 100 and Duracao < 150 
order by Duracao;

--7

Select Ano, COUNT(*) Quantidade from Filmes
group by Ano
order by Quantidade desc;

--8
select * from Atores
where Genero = 'M';

--9
select * from Atores
where Genero = 'F'
order by PrimeiroNome;

--10

select
F.Nome,
G.Genero 
from Filmes F
inner join FilmesGenero FG On F.Id = FG.IdFilme
inner join Generos G on FG.IdGenero=G.Id;

--11

select
F.Nome,
G.Genero 
from Filmes F
inner join FilmesGenero FG On F.Id = FG.IdFilme
inner join Generos G on FG.IdGenero=G.Id
where G.Genero='Mistério';

--12

select 
F.Nome,
A.PrimeiroNome,
A.UltimoNome,
E.Papel
from ElencoFilme E
inner join Atores A on E.IdAtor=A.Id
inner join Filmes F on F.Id=E.IdFilme;



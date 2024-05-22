
-- 1º Criando a tabela Estoque:

create table Estoque (
  Id integer primary key,
  Id_livro integer, 
  Quantidade integer);


-- 2º Criando a tabela Livros:

create table Livros (
  Id integer primary key,
  Titulo text,
  Autor text, 
  Ano_publicação integer,
  Preço real
  );
  
-- 3º Inserindo dados na tabela Livros:

insert into Livros (Titulo, Autor, ano_publicação, Preço) values ('Até que a morte nos separe', 'Leonardo Mantiqueira', 1897, 35.50);
insert into Livros (Titulo, Autor, ano_publicação, Preço) values ('Hoje, amanhã e sempre', 'Junqueira Mattos', 1885, 99.86);
insert into Livros (Titulo, Autor, ano_publicação, Preço) values ('Na minha instante empoeirada', 'Lorenzo Gabriel', 2000, 55.50);
insert into Livros (Titulo, Autor, ano_publicação, Preço) values ('A vida não tem nada de errado', 'Enzzo Gael', 2010, 59.90);
insert into Livros (Titulo, Autor, ano_publicação, Preço) values ('Como fazer sua maquiagem', 'Valentina Mariah', 2003, 39.60);
insert into Livros (Titulo, Autor, ano_publicação, Preço) values ('Como fazer sua maquiagem 2.0', 'Valentina Mariah', 2005, 99.60);
insert into Livros (Titulo, Autor, ano_publicação, Preço) values ('Como ser um milhonario antes dos 18', 'Maria Flor', 2022, 100.80);

-- 4º Inserindo valores na tabela Estoque:

Insert into Estoque (id_livro, quantidade) values (1, 56);
Insert into Estoque (id_livro, quantidade) values (2, 90);
Insert into Estoque (id_livro, quantidade) values (3, 27);
Insert into Estoque (id_livro, quantidade) values (4, 10);
Insert into Estoque (id_livro, quantidade) values (5, 59);
Insert into Estoque (id_livro, quantidade) values (6, 29);
Insert into Estoque (id_livro, quantidade) values (7, 2);

-- Operações:

-- 1. Obter a quantidade disponível em estoque para um determinado livro.

select 
Livros.Titulo,
Livros.Autor,
Estoque.Quantidade
from Livros join Estoque on Livros.id = Estoque.Id_livro
where Livros.Titulo = 'Como ser um milhonario antes dos 18';


-- 2. Adicionar unidades ao estoque de um livro específico:

UPDATE Estoque SET quantidade = quantidade + 30
WHERE id = 7 AND quantidade <= 2

SELECT * FROM Estoque

-- 4. Remover unidades do estoque de um livro específico:


UPDATE Estoque set quantidade = quantidade - 90
where id = 2 ;

SELECT * FROM Estoque;












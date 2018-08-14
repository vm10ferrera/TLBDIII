use master
--drop database Atividade20180731
--create database Atividade20180731
--go
use Atividade20180731
  
  --create table tarefa (
  --id_tarefa int primary key identity(1,1),
  --titulo nvarchar(100) not null,
  --prazo_estimado date,
  --descricao nvarchar(150),
  --data_inicio date not null,
  --data_termino date,
  --id_metodologia int
  --)
  
  --create table metodologia (
  --id_metodologia int primary key identity(1,1),
  --titulo_metodologia nvarchar(500)
  --)
  
  --create table rel_taref_pessoas (
  --id int primary key identity(1,1),
  --id_tarefa int,
  --id_pessoa int
  --)
  
  --create table pessoa (
  --id_pessoa int primary key identity(1,1),
  --nome_pessoa nvarchar (100),
  --email nvarchar (100),
  --sexo nvarchar(1)
  --)
  
  --alter table metodologia add constraint fk_id_pessoa foreign key (id_pessoa) references pessoa (id_pessoa)
  --alter table metodologia add constraint fk_id_tarefa foreign key (id_tarefa) references tarefa (id_tarefa)
  --alter table tarefa add constraint fk_id_metodologia foreign key (id_metodologia) references metodologia (id_metodologia)
  
  --insert into tarefa (titulo, prazo_estimado, descricao, data_inicio, data_termino, id_metodologia)
  --values ('Varrer o chão', '07/08/2018', 'Varrer o chão inteiro se não vai pro olho da rua.', '07/08/2018', '07/08/2018', '3'),
  --('Trabalho de Artes', '10/08/2018', 'Fazer o trabalho para não repetir em artes.', '08/08/2018', '09/08/2018', '2'),
  --('Traduzir o livro de inglês "Do you like and games?"', '13/08/2018', 'Traduzir o livro de um dos melhores de inglês para o TCC.', '07/08/2018', '12/08/2018', '3')
  --values('Traduzir o livro de inglês "Do you like and games?"', '13/08/2018', 'Traduzir o livro de um dos melhores de inglês para o TCC.', '07/08/2018', '14/08/2018', '3')
  --insert into metodologia (titulo_metodologia)
  --values ('Pesquisa Descritiva'),
  --('Qualitativa'),
  --('Análise de documentos')
  
  --insert into pessoa (nome_pessoa, email, sexo)
  --values ('José Freitas', 'jsfreitas@gmail.com', 'M'),
  --('Maria Aparecida', 'amem@gmail.com', 'F'),
  --('Caetano Gil', 'vanguarda@gmail.com', 'M'),
  --('Matias Carvalho', 'matias@gmail.com', 'M')
  --values ('Marineusa Freitas', 'matias@gmail.com', 'F')
  
  --insert into rel_taref_pessoas (id_tarefa, id_pessoa)
  --values ('1', '3'),
  --('2', '2'),
  --('3', '1')
  --('4', '5')
 
  --select * FROM pessoa WHERE id_pessoa NOT IN (SELECT id_pessoa FROM rel_taref_pessoas);
  
  --select COUNT(*) as Nvezes, a.id_metodologia, a.titulo_metodologia FROM metodologia as a inner join tarefa as b on a.id_metodologia = b.id_metodologia group by a.id_metodologia, a.titulo_metodologia
  
  --select COUNT (*) as NrVezespsexo, a.sexo FROM pessoa as a inner join rel_taref_pessoas as b on a.id_pessoa = b.id_pessoa group by a.sexo order by NrVezespsexo desc
  
  --select a.nome_pessoa as 'Nome', b.prazo_estimado as 'Prazo estimado', b.data_termino as 'Termino'
  --from pessoa as a
  --join rel_taref_pessoas as c
  --on a.id_pessoa = c.id_pessoa
  --join tarefa as b
  --on c.id_tarefa = b.id_tarefa where b.data_termino > b.prazo_estimado



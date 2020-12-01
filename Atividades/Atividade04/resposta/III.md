![](https://github.com/marciosindeaux/MDC053/blob/master/Atividades/Atividade04/resposta/imagens/Captura%20de%20tela%202020-12-01%20141513.jpg?raw=true)

```sql

create table Aluno (
	num_matricula serial primary key not null, 
	nom_aluno varchar(255) not null
);

create table Editora (
	cod_editora serial primary key not null, 
	nom_editora varchar(255) not null
);

create table Livro (
	num_isbn varchar(13)primary key not null, 
	tit_livro varchar(255) not null, 
	num_paginas integer not null, 
	cod_editora integer not null,
	constraint livro_editora foreign key (cod_editora) references Editora(cod_editora)
);

create table Emprestimo (
	num_matricula integer not null , 
	num_isbn varchar(13) not null, 
	dat_emprestimo date not null, 
	dat_devolucao date,
	constraint pk_tabela primary key (num_matricula,num_isbn, dat_emprestimo),
	constraint empretimo_aluno foreign key (num_matricula) references Aluno(num_matricula),
	constraint empretimo_livro foreign key (num_isbn) references Livro(num_isbn)
);

```

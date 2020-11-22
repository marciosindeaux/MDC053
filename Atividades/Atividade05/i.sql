create table curso (
	id_curso serial primary key,
	nome_curso varchar(100) not null,
	carga_horaria smallint
)

create table aluno (
	id_aluno serial not null primary key ,
	nome_aluno varchar(100) not null,
	email_aluno varchar(100),
	fone_contato varchar(14)
)

create table professor(
	id_professor serial not null primary key,
	nome_professor varchar(100) not null,
	titulacao_professor char(3)
)

create table turma (
	id_turma serial not null primary key,
	id_curso int not null,
	id_professor int not null,
	id_aluno int not null,
	data_matricula date not null,
	constraint turma_aluno foreign key (id_aluno) references aluno(id_aluno),
	constraint turma_professor foreign key (id_professor) references professor(id_professor),
	constraint turma_curso foreign key (id_curso) references curso(id_curso)
)

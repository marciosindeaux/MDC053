create table PESSOA (
	id integer not null primary key,
	nome varchar(100) not null,
	sexo char(1),
	cpf char(11) not null,
	cnpj char(14) not null
)

create table ENDERECO (
	id integer primary key,
	logradouro varchar(100),
	numero integer default 0,
	cep char(10) not null,
	cidade varchar(30),
	uf char(2) not null,
	constraint endereco_pessoa foreign key (id) references PESSOA(id)
)

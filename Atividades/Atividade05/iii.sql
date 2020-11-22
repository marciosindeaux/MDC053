create table departamento (
	codigo int primary key,
	nome varchar(100) not null
)

create table funcionario (
	matricula int primary key not null,
	nome varchar(100) not null,
	salario decimal(100) not null,
	gerente int,
	departamento int not null,
	constraint funcionario_departamento foreign key (departamento) references departamento(codigo),
	constraint funcionario_gerente foreign key (gerente) references funcionario (matricula)
)

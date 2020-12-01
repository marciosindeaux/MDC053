![](https://github.com/marciosindeaux/MDC053/blob/master/Atividades/Atividade04/resposta/Captura%20de%20tela%202020-12-01%20134008.jpg?raw=true)

```sql
create table Departamento (
	numero_depto serial primary key not null, 
	nome_depto varchar(255)
);

create table Empregado (
	numero_empregado serial primary key not null, 
	nome_empregado varchar(255) not null, 
	numero_depto integer not null,
	constraint empregado_departamento foreign key (numero_depto) references Departamento(numero_depto)
);

create table Gerente (
	numero_gerente integer primary key not null, 
	nome_gerente varchar(255),
	constraint gerente_empregado foreign key (numero_gerente) references Empregado(numero_empregado)		
);

create table Projeto (
	numero_projeto serial primary key not null  , 
	nome_projeto varchar(255) not null,  
	data_inicio_projeto date, 
	numero_gerente integer not null,
	constraint projeto_gerente foreign key (numero_gerente) references Gerente(numero_gerente)
);

 create table Projeto_Empregado (
 	numero_projeto integer primary key not null, 
 	numero_empregado integer not null, 
 	horas_trabalhadas_projeto decimal default 0,
 	constraint projeto_projeto_empregado foreign key (numero_projeto) references Projeto(numero_projeto),
 	constraint empregado_projeto_empregado foreign key (numero_empregado) references Empregado(numero_empregado)
);
```

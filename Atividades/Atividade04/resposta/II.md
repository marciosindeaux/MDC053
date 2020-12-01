![](https://github.com/marciosindeaux/MDC053/blob/master/Atividades/Atividade04/resposta/imagens/Captura%20de%20tela%202020-12-01%20135400.jpg?raw=true)

```sql

create table Material (
	cod_material serial primary key not null, 
	dsc_material varchar(255) not null , 
	vlr_unitario float
);
 
create table Fornecedor (
	cod_fornecedor serial primary key not null, 
	nom_fornecedor varchar(255) not null, 
	end_fornecedor varchar(255)
); 

create table Pedido (
	cod_pedido serial primary key not null, 
	dat_emissao date not null, 
	cod_fornecedor integer not null, 
	vlr_total_pedido float not null,
	constraint pedido_fornecedor foreign key (cod_fornecedor) references Fornecedor(cod_fornecedor) 
);

create table Pedido_Material (
	cod_pedido integer not null, 
	cod_material integer not null, 
	qtd_pedido integer not null, 
	vlr_total_material float not null,
	constraint pk_tabela primary key (cod_pedido, cod_material),
	constraint pedido__pedido_material foreign key (cod_pedido) references Pedido(cod_pedido),
	constraint material__pedido_material foreign key (cod_material) references Material(cod_material)	
);

```

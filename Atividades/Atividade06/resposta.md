## **V)**<br>
A query realizada foi: 
```sql
  insert into turma(id_turma, num_periodo, id_professor, id_disciplina) values (3,20201,3, null)
```
Ocorreu um erro ao realizar a query pois não existe , no momento de realização da query , professor com id = 3

## **VI)**<br>
A query realizada foi:
```sql
  insert into turma(id_turma, num_periodo, id_professor, id_disciplina) values (3,20202,null, 1)
```
Foi realizada com sucesso.

## **VII)**<br>
A query realizada foi:
```sql
  update disciplina 
  set id_disciplina = 3
  where nome_disciplina like 'BANCO DE DADOS I'
```
A query não pode ser realizada pois deu erro de violação de constraint. A disciplina de BANCO DE DADOS I ja era referenciada emoutras tabelas.


## **VIII)**<br>
A query realizada foi:
```sql
  update historico 
  set num_faltas = 0
  where id_aluno = 1 and id_turma = 1
```
A query foi executada com sucesso


## **IX)**<br>
A query realizada foi:
```sql
  delete from aluno where nome_aluno like 'PEDRO'
```
A query foi executada com sucesso

## **X)**<br>
A query realizada foi:
```sql
  delete from disciplina d where nome_disciplina like 'BANCO DE DADOS II'
```
A query foi executada com sucesso

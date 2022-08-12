drop table dept;

-- exemplo de criação de tabela
CREATE TABLE DEPT
(DEPTNO NUMBER(2),
DNAME VARCHAR(14),
LOC VARCHAR(13),
create_date date
);

-- Descrever a tabela
describe dept;
desc dept;


-- Limpa a tela
clear screen;
cl scr;


-- Alterar e adicionar mais um objeto na tabela
alter table dept
add
total_sal number(10,2);


-- Alterar e modificar um objeto na tabela
alter table dept
MODIFY
total_Sal number(12,2);


-- Alterar e renomear o nome da tabela
alter table dept
rename column
total_Sal to total_Salary;


-- Excluir coluna
alter table dept
drop column total_Salary;


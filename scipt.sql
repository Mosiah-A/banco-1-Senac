'''
################################################

create table departamentos (
	id Int auto_increment primary KEY,
    nome VARCHAR(100),
    n_respon varchar(100),
    bloco varchar(100)
);

#################################################

CREATE TABLE empregados (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    departamento_id Int,
    FOREIGN KEY (departamento_id) REFERENCES departamentos (id)
);
insert into departamentos (nome) values ('RH'), ('Financiro'), ('Ti');

ALTER TABLE `bd_roberta`.`departamentos` 
ADD COLUMN `bloco` VARCHAR(100) NULL AFTER `nome`,
ADD COLUMN `n_respon` VARCHAR(100) NULL AFTER `bloco`;

insert into empregados (nome, departamento_id) values ('João',1), ('Maria Souza', 2), ('Carlos Pereira', 3);

select * from empregados;
select * from departamentos;
select nome from empregados where departamento_id = 2;
select nome, departamento_id from empregados order by nome asc;

update empregados set nome = 'Tamires Bezerra' where id = 1;

insert into departamentos (nome, n_respon, bloco)
values('Recursos Humanos','Tamires','Bloco A'), ('Financeiro','Carlos Eduardo', 'Bloco B'), ('TI','Osvaldo','Bloco C');

update departamentos set nome = 'DTI'
where id = 3;

select * from test where d_cad <= "2024-07-08";

create table test(
	id int,
    nome varchar(100),
    d_cad date
);

drop table alunos;

'''
create schema Mosiah;
use Mosiah;
################################ 17/09 #############################

create table departamentos (
	id Int auto_increment primary KEY,
    nome VARCHAR(100),
    bloco varchar(100),
    data_criacao date
);
CREATE TABLE empregados (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    departamento_id Int,
    data_admissao date,
    salario decimal(10,2),
    FOREIGN KEY (departamento_id) REFERENCES departamentos (id)
);
create table clientes (
	id int auto_increment primary key,
    nome varchar(100)
);

create table vendas (
	id_produto int auto_increment primary key,
    id_cliente int,
	produto varchar(100),
	quantidade int,
    FOREIGN KEY (id_cliente) references clientes (id)
);

select * from empregados;

INSERT INTO departamentos (nome, bloco, data_criacao)
VALUE ('Tecnologia da Informação', 'Bloco C', '2001-08-05'), 
('Recursos humanos', 'Bloco D', '2005-02-25'), 
('Financeiro', 'Bloco B', '2013-05-18'), 
('Marketing', 'Bloco A', '2009-11-28');

INSERT INTO empregados (nome, departamento_id, data_admissao, salario)
values ('Mosiah', 1, '2024-09-07', 15000.00),
('Jerold', 2, '1980-08-12', 1230.00),
('Alfred', 3, '1785-06-06', 2.00),
('Bruce', 4, '2012-02-02', 15325546.00),
('Steve', 1, '1756-08-12', 1235.45),
('Tony', 2, '2023-04-02', 12000.00),
('Peter', 3, '2002-02-02', 850.00),
('Ted', 4, '2001-01-02', 1235.65),
('Chester', 1, '2002-02-02', 1400.56);


-- 24/09 --select * from empregados where departamento_id = 2;
select * from empregados where salario > 7000;


	-- Seleciona dados que começam com a letra B
select * from empregados where nome like 'b%';

select * from empregados where data_admissao > '2022-01-01'
order by nome desc;


select * from departamentos order by id desc;
select * from empregados order by data_admissao desc;


#########  01/10/2024 #####################

-- Contagem de todos os empregados por departamento
select departamento_id, count(*) as Total_empregados
from empregados
group by departamento_id;

-- Média salarial dos empregados
select departamento_id, avg( salario ) as salario_medio
from empregados
group by departamento_id ;
'''
################################################

create table departamentos (
	id Int auto_increment primary KEY,
    nome VARCHAR(100),
    n_respon varchar(100),
    bloco varchar(100)
);

#################################################

CREATE TABLE empregados (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    departamento_id Int,
    FOREIGN KEY (departamento_id) REFERENCES departamentos (id)
);
insert into departamentos (nome) values ('RH'), ('Financiro'), ('Ti');

ALTER TABLE `bd_roberta`.`departamentos` 
ADD COLUMN `bloco` VARCHAR(100) NULL AFTER `nome`,
ADD COLUMN `n_respon` VARCHAR(100) NULL AFTER `bloco`;

insert into empregados (nome, departamento_id) values ('João',1), ('Maria Souza', 2), ('Carlos Pereira', 3);

select * from empregados;
select * from departamentos;
select nome from empregados where departamento_id = 2;
select nome, departamento_id from empregados order by nome asc;

update empregados set nome = 'Tamires Bezerra' where id = 1;

insert into departamentos (nome, n_respon, bloco)
values('Recursos Humanos','Tamires','Bloco A'), ('Financeiro','Carlos Eduardo', 'Bloco B'), ('TI','Osvaldo','Bloco C');

update departamentos set nome = 'DTI'
where id = 3;

select * from test where d_cad <= "2024-07-08";

create table test(
	id int,
    nome varchar(100),
    d_cad date
);

drop table alunos;

'''
create schema Mosiah;
use Mosiah;
################################ 17/09 #############################

create table departamentos (
	id Int auto_increment primary KEY,
    nome VARCHAR(100),
    bloco varchar(100),
    data_criacao date
);
CREATE TABLE empregados (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    departamento_id Int,
    data_admissao date,
    salario decimal(10,2),
    FOREIGN KEY (departamento_id) REFERENCES departamentos (id)
);
create table clientes (
	id int auto_increment primary key,
    nome varchar(100)
);

create table vendas (
	id_produto int auto_increment primary key,
    id_cliente int,
	produto varchar(100),
	quantidade int,
    FOREIGN KEY (id_cliente) references clientes (id)
);

select * from empregados;

INSERT INTO departamentos (nome, bloco, data_criacao)
VALUE ('Tecnologia da Informação', 'Bloco C', '2001-08-05'), 
('Recursos humanos', 'Bloco D', '2005-02-25'), 
('Financeiro', 'Bloco B', '2013-05-18'), 
('Marketing', 'Bloco A', '2009-11-28');

INSERT INTO empregados (nome, departamento_id, data_admissao, salario)
values ('Mosiah', 1, '2024-09-07', 15000.00),
('Jerold', 2, '1980-08-12', 1230.00),
('Alfred', 3, '1785-06-06', 2.00),
('Bruce', 4, '2012-02-02', 15325546.00),
('Steve', 1, '1756-08-12', 1235.45),
('Tony', 2, '2023-04-02', 12000.00),
('Peter', 3, '2002-02-02', 850.00),
('Ted', 4, '2001-01-02', 1235.65),
('Chester', 1, '2002-02-02', 1400.56);


-- 24/09 --select * from empregados where departamento_id = 2;
select * from empregados where salario > 7000;


	-- Seleciona dados que começam com a letra B
select * from empregados where nome like 'b%';

select * from empregados where data_admissao > '2022-01-01'
order by nome desc;


select * from departamentos order by id desc;
select * from empregados order by data_admissao desc;


#########  01/10/2024 #####################

-- Contagem de todos os empregados por departamento
select departamento_id, count(*) as Total_empregados
from empregados
group by departamento_id;

-- Média salarial dos empregados
select departamento_id, avg( salario ) as salario_medio
from empregados
group by departamento_id ;


select * from empregados;
-- Total de emprtegados
SELECT COUNT(*) AS total_empregados
FROM empregados;

-- Média salarial geral
SELECT AVG(salario) AS media_salarial
FROM empregados;

-- Menor e maior salário
SELECT MIN(salario) AS menor_salario, MAX(salario) AS maior_salario
FROM empregados;

-- Total de salários pagos por departamento
SELECT d.nome AS departamento, SUM(e.salario) AS total_salarios
FROM departamentos d
JOIN empregados e ON d.id = e.departamento_id
GROUP BY d.nome;

############## 15/10/2024 ############

create table usuario (
	id_usuario int auto_increment primary key,
	nome varchar(100)
);
create table editora (
	id_editora int auto_increment primary key,
	nome varchar(100),
    endereco varchar(100)
);
create table autor(
	id_autor int auto_increment primary key,
    nome varchar(100)
);

create table livro(
	id_livro int auto_increment primary key,
    titulo varchar(100),
    id_editora int,
    FOREIGN KEY (id_editora) references editora (id_editora)
);

create table emprestimo (
	id_usuario int,
    id_livro int,
    daraEmprestimo date,
    dataDevolucao date,
    FOREIGN KEY (id_livro) references livro (id_livro),
    FOREIGN KEY (id_usuario) references usuario (id_usuario)
);

create table reserva (
	id_livro int,
    id_editora int,
    id_usuario int,
    dataReserva date,
    FOREIGN KEY (id_livro) references livro (id_livro),
    FOREIGN KEY (id_editora) references editora (id_editora),
    FOREIGN KEY (id_usuario) references usuario (id_usuario)
);
create table possui(
	id_livro int,
    id_autor int,
    FOREIGN KEY (id_livro) references livro (id_livro),
    FOREIGN KEY (id_autor) references autor (id_autor)
);




############ Normalização 05/11/2024 ##########


create schema f1;

use f1;

create table tabelaunica (
	id int auto_increment primary key,
    titulo varchar(45),
    autor varchar(45),
    categoria varchar(45),
    ano_publicacao date,
    editora varchar(45),
    cidade_editora varchar(45),
    ISBN int,
    id_aluno int,
    nome_aluno varchar(45),
    data_emprestimo date,
    data_devolucao date
);

create schema f2;

use f2;

drop table editora;

create table editora(
	id int auto_increment primary key,
	editora varchar(45),
    cidade_editora varchar(45),
    ISBN varchar(45)
    
);
create table aluno(
	id int  auto_increment primary key,
    nome_aluno varchar(45),
    data_emprestimo date,
    data_devolucao date

);

create table livros(
	id int auto_increment primary key,
    titulo varchar(45),
    autor varchar(45),
    categoria varchar(45),
    ano_publicacao year(0000),
    id_editora int,
    id_aluno int,
	FOREIGN KEY (id_editora) references editora (id),
    FOREIGN KEY (id_aluno) references aluno (id)
);
select * from livros, aluno , editora;
select * from aluno;
select * from editora;
select * from livros;


insert into editora (id, editora, cidade_editora, ISBN)
	values (1, "Novatec","São Paulo", 12548956324700);
    
insert into aluno (id, nome_aluno, data_emprestimo, data_devolucao)
	values (1, "Rogerio Silva", '2024-05-08', '2024-05-10');
    
insert into livros (id, titulo, autor, categoria, ano_publicacao, id_editora, id_aluno)
	values (1, "Python básico", "João Sá", "Programação", '2020', 1, 1);



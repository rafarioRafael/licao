create table CLIENTES (  
  cliente_id        number,  
  nome          varchar2(50) not null,  
  sobrenome     varchar2(50) not null,
  sigla_estado	varchar2(10) not null,
  estado 		varchar2(50) not null,
  renda			number,
  data_cadastro date DEFAULT SYSDATE,
  constraint pk_cliente primary key (cliente_id)  
);

insert into CLIENTES (cliente_id, nome, sobrenome, sigla_estado, estado, renda) values (5, 'giovanna', 'flor', 'SP', 'Guarulhos', 1000);

INSERT INTO CLIENTES (cliente_id, nome, sobrenome, sigla_estado, estado, renda)
VALUES
(1, 'João', 'Silva', 'SP', 'São Paulo', 5000),
(2, 'Maria', 'Santos', 'RJ', 'Rio de Janeiro', 6000),
(3, 'Pedro', 'Oliveira', 'MG', 'Minas Gerais', 4500),
(4, 'Ana', 'Ferreira', 'RS', 'Rio Grande do Sul', 5500),
(5, 'Lucas', 'Souza', 'PR', 'Paraná', 4800),
(6, 'Carla', 'Costa', 'BA', 'Bahia', 5200);

select * from clientes

create table PRODUTOS (  
  produto_id        number,  
  nome          	varchar2(50) not null,
  tipo				varchar2(100) not null,
  qtd			    number not null,
  valor_unitario    number not null,  
  constraint pk_produto primary key (produto_id)  
);

insert into PRODUTOS (produto_id, nome, tipo, qtd, valor_unitario) values (5, 'Escova de dente', 'Higiene', '100', '11');

INSERT INTO PRODUTOS (produto_id, nome, tipo, qtd, valor_unitario)
VALUES
(1, 'Camiseta', 'Roupa', 100, 20.99),
(2, 'Calça Jeans', 'Roupa', 80, 49.99),
(3, 'Tênis Esportivo', 'Calçado', 50, 79.99),
(4, 'Relógio Digital', 'Acessório', 120, 29.99),
(5, 'Mochila', 'Acessório', 70, 39.99),
(6, 'Bola de Futebol', 'Esporte', 30, 14.99);

select * from produtos;

create table FUNCIONARIOS (  
  funcionario_id        number,  
  nome          		varchar2(50) not null,
  sobrenome				varchar2(50) not null,
  sexo					varchar2(3) not null,
  salario     			number not null,
  data_nascimento   	    date not null,
  constraint pk_funcionario primary key (funcionario_id)  
);

insert into FUNCIONARIOS (funcionario_id, nome, sobrenome, sexo, salario, data_nascimento) values (5, 'igor', 'leao', 'M', 90122, '09-JUN-1987');

INSERT INTO FUNCIONARIOS (funcionario_id, nome, sobrenome, sexo, salario, data_nascimento)
VALUES
(1, 'João', 'Silva', 'M', 3500, TO_DATE('1990-05-15', 'YYYY-MM-DD')),
(2, 'Maria', 'Santos', 'F', 3800, TO_DATE('1988-08-20', 'YYYY-MM-DD')),
(3, 'Pedro', 'Oliveira', 'M', 3200, TO_DATE('1995-03-10', 'YYYY-MM-DD')),
(4, 'Ana', 'Ferreira', 'F', 4000, TO_DATE('1992-11-25', 'YYYY-MM-DD')),
(5, 'Lucas', 'Souza', 'M', 3700, TO_DATE('1987-09-18', 'YYYY-MM-DD')),
(6, 'Carla', 'Costa', 'F', 3600, TO_DATE('1993-06-30', 'YYYY-MM-DD'));

select * from funcionarios;

create table FORNECEDORES (  
  fornecedor_id        number,  
  nome          	varchar2(50) not null,
  cidade			varchar2(50) not null,  
  constraint pk_fornecedor primary key (fornecedor_id)  
);

insert into FORNECEDORES (fornecedor_id, nome, cidade) values (5, 'ARRANHA-TELHADOS', 'São Paulo');

INSERT INTO FORNECEDORES (fornecedor_id, nome, cidade)
VALUES
(1, 'ABC Company', 'São Paulo'),
(2, 'XYZ Corporation', 'Rio de Janeiro'),
(3, 'Global Suppliers', 'Belo Horizonte'),
(4, 'Top Distributors', 'Porto Alegre'),
(5, 'Excellent Goods', 'Curitiba'),
(6, 'Prime Merchants', 'Salvador');

select * from fornecedores;


=======================================================================================

10/04/2024

create table student (  
  student_id    number,  
  first_name    varchar2(50) not null,  
  last_name     varchar2(50) not null,
  birth_date	date not null,
  start_date  	date not null,
  constraint pk_student primary key (student_id)  
);

create table lecturer (
    lecturer_id	  number,
    first_name		varchar2(50) not null,
    last_name		varchar2(50) not null,
    email			varchar2(50) not null,
    constraint pk_lecturer primary key (lecturer_id)
);

create table academic_semester (
    academic_semester_id	number,
    calendar_year			number(4),
    season_term				varchar2(50),
    constraint pk_academic_semester primary key (academic_semester_id)
);

create table course_edition (
    course_id             number,
    lecturer_id           number,
    academic_semester_id  number,
    constraint pk_course_edition primary key (course_id),
    constraint fk_lecturer foreign key (lecturer_id) references lecturer (lecturer_id),
    constraint fk_academic_semester foreign key (academic_semester_id) references academic_semester (academic_semester_id)
);

===========================================

24/04/2024

INSERT INTO clientes (cliente_id, nome) VALUES (1, 'Tech Solutions Ltda');
INSERT INTO clientes (cliente_id, nome) VALUES (2, 'Comércio Eletrônico S.A.');
INSERT INTO clientes (cliente_id, nome) VALUES (3, 'Consultoria Inovadora Ltda');
INSERT INTO clientes (cliente_id, nome) VALUES (4, 'Serviços Integrados LTDA');
INSERT INTO clientes (cliente_id, nome) VALUES (5, 'Indústria Moderna S.A.');


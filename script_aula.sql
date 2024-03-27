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

select * from clientes

create table PRODUTOS (  
  produto_id        number,  
  nome          	varchar2(50) not null,  
  valor     		number not null,  
  constraint pk_produto primary key (produto_id)  
);

insert into PRODUTOS (produto_id, nome, valor) values (5, 'Microscópio', '700');
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
select * from funcionarios;

create table FORNECEDORES (  
  fornecedor_id        number,  
  nome          	varchar2(50) not null,
  cidade			varchar2(50) not null,  
  constraint pk_fornecedor primary key (fornecedor_id)  
);

insert into FORNECEDORES (fornecedor_id, nome, cidade) values (5, 'ARRANHA-TELHADOS', 'São Paulo');
select * from fornecedores;
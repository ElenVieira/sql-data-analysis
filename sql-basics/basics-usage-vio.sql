-- como realizar uma alteração de atributo
alter table usuario add unique (email);

-- como fazer um select geral da tabela
select * from usuario;

-- como selecionar valores específicos
select email, nome from usuario;

-- como mudar a visualização dos nomes das colunas
select cpf as documento, telefone as celular, nome from usuario;

-- maneiras de usar o select como operadores aritiméticos
select 10+10, 10-10, 10*10, 10/10;
-- nomeando
select 10+10 as soma, 10-10 as subtração, 10*10 as multiplicação, 10/10 as divisão;

-- utilizando operadores aritiméticos junto com as colunas da tabela
select cpf * 10 as "id x 10", nome from usuario;

-- utilizando where com operadores relacionais
select * from usuario where cpf > 3;
select * from usuario where cpf >= 3;
select * from usuario where cpf < 3;
select * from usuario where cpf <= 3;
select * from usuario where cpf = 3;
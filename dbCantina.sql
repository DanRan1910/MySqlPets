-- apagando banco de dados
drop database dbcantina;

-- criando banco de dados
create database dbcantina;

-- acessando banco de dados
use dbcantina;

-- criando as tabelas
create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
email varchar(100) unique,
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2) default 0 check(salario >=0),
nascimento date,
telCelular char(10),
primary key(codFunc));

create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100) not null,
email varchar(100) not null,
cnpj char(18) not null unique,
primary key(codForn));

create table tbClientes(
codCli int not null auto_increment,
nome varchar(100) not null,
email varchar(100),
telCelular char(10),
primary key(codCli));

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(25) not null unique,
senha varchar(10) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc)references tbFuncionarios(codFunc));






create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
quantidade int,
valor decimal(9,2),
validade date,
dataEntrada date,
horaEntrada time,
codForn int not null,
primary key(codProd),
foreign key(codForn) references tbFornecedores(codForn)
);

create table tbVendas(
codVenda int not null auto_increment,
dataVenda date,
horaVenda time,
quantidade int,
codUsu int not null,
codCli int not null,
codProd int not null,
primary key(codVenda),
foreign key(codUsu)references tbUsuarios(codUsu),
foreign key(codCli)references tbClientes(codCli),
foreign key(codProd)references tbProdutos(codProd));

-- visualizando a estrutura das tabelas
desc tbFuncionarios;
desc tbFornecedores;
desc tbClientes;
desc tbUsuarios;
desc tbProdutos;
desc tbVendas;

-- inserindo registros nas tabelas

insert into tbFuncionarios(nome,email,cpf,sexo,salario,
	nascimento,telCelular)values('Amarildo Santiago',
	'amarildo@hotmail.com','111.125.248-88','M',
	1500.50,'1999/06/25','95842-8541');

insert into tbFuncionarios(nome,email,cpf,sexo,salario,
	nascimento,telCelular)values('Jessica Camargo',
	'jessiquinha@gmail.com','536.272.845-12','F',
	2250.00, '1964/02/04','98172-2739');



insert into tbFornecedores (nome,email,cnpj)
	values ('Armarinho Fernando',
			'fernandesz@gmail.com','25.258.152.0001/25');

insert into tbFornecedores (nome,email,cnpj)
	values ('Magazine Luiza',
			'MagazineLui@gmail.com','21.222.192.0001/25');


insert into tbFornecedores (nome,email,cnpj)
	values ('TOUBOU',
			'toucaBoutique@gmail.com','22.548.832.0001/25');





insert into tbClientes (nome, email, telCelular)
	values('Julia Maria Pinto',
		'juliaajulia@gmail.com', '93728-1726');

insert into tbClientes (nome, email, telCelular)
	values('Kendrick Lamar',
		'TheBestOfDrake@gmail.com', '93218-1777');



insert into tbUsuarios(nome,senha,codFunc)
	values ('amarildo.santiago', '1234567' ,1);



insert into tbProdutos(descricao,quantidade,valor,validade,dataEntrada,
						horaEntrada,codForn)
	values ('Mesa martilene',15,850.00, '2030/01/09','2022/04/05','19:54:12',2);

insert into tbProdutos(descricao,quantidade,valor,validade,dataEntrada,
						horaEntrada,codForn)
	values ('Computador Windows 7',10,1850.00, '2037/07/09','2022/07/05','00:54:51',2);

insert into tbProdutos(descricao,quantidade,valor,validade,dataEntrada,
						horaEntrada,codForn)
	values ('Copo Plastico',45,150.00, '2031/01/09','2021/04/05','03:54:11',2);

insert into tbProdutos(descricao,quantidade,valor,validade,dataEntrada,
						horaEntrada,codForn)
	values ('Mercurio',2,22850.00, '2033/01/09','2022/14/05','14:54:14',1);




insert into tbVendas(dataVenda,horaVenda,quantidade,codUsu,codCli,codProd)
	values ('2024/08/08','20:00:57',1,1,2,4);

insert into tbVendas(dataVenda,horaVenda,quantidade,codUsu,codCli,codProd)
	values ('2024/08/08','20:00:57',13,1,1,3);

insert into tbVendas(dataVenda,horaVenda,quantidade,codUsu,codCli,codProd)
	values ('2024/08/08','20:00:57',22,1,2,1);

insert into tbVendas(dataVenda,horaVenda,quantidade,codUsu,codCli,codProd)
	values ('2024/08/08','20:00:57',10,1,2,2);

		

-- visualizando os registros das tabelas
select * from tbFuncionarios;
select * from tbFornecedores;
select * from tbClientes;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbVendas;
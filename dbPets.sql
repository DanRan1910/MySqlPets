-- Apagar Banco de Dados
drop database dbPets;
-- Criar Banco de Dados
create database dbPets;
-- Acessar o Banco de Dados
use dbPets;
-- Visualizando banco de dados
show databases;
-- Criando tabelas no Banco de dados

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar (100) not null,
email varchar (100),
telCel char(10),
cpf char (14),
primary key(codFunc)
);

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar (50) not null,
senha varchar (10) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc)references tbFuncionarios(codFunc)
);
-- visualiando tabelas
show tables;
-- visualisando a estrutura das tabelas
desc tbUsuarios;
desc tbFuncionarios;
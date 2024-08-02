-- Apagar Banco de Dados
drop database dbPets;
-- Criar Banco de Dados
create database dbPets;
-- Acessar o Banco de Dados
use dbPets;
-- Visualizando banco de dados
show databases;
-- Criando tabelas no Banco de dados
create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar (50) not null,
senha varchar (10) not null,
primary key (codUsu)
);
create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar (100) not null,
email varchar (100),
telCel char(10))
primary key (codFunc)
);

-- visualiando tabelas
show tables;
-- visualisando a estrutura das tabelas
desc tbUsuarios
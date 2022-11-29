CREATE DATABASE ProjetoRecuperacao
go
USE ProjetoRecuperacao

go
CREATE TABLE Veiculo(
ID_Veiculo int primary key identity,
PlacaVeiculo varchar(8) not null,
Modelo varchar(100) not null,
Marca varchar(100) not null unique,
Ano int not null,
Capacidade int not null,
)

GO
create table Motorista(
ID_Motorista int primary key identity,
--Fk ID_Veiculo int ok
--fk ID_Escola int ok
NomeMotorista varchar(30) not null,
SobrenomeMotorista varchar (30) not null,
CPFMotorista varchar(15) not null unique,
--fk ID_Telefone int ok
EmailMotorista varchar(250) not null unique,
ContaBanco varchar(250) not null unique
)
GO 
alter table Motorista ADD FK_Veiculo_m int
go 
alter table Motorista ADD FK_Escola_m int
GO 
alter table Motorista ADD FK_Telefone_m int
GO 
alter table Motorista 
ADD foreign key (FK_Veiculo_m) references Veiculo(ID_Veiculo)
Go
Alter table Motorista
ADD foreign key (FK_Escola_m) references Escola(ID_Escola)
go 
alter table Motorista
ADD foreign key (FK_Telefone_m) references Telefone(ID_Telefone)

GO
create table Endereco(
ID_Endereco int primary key identity,
CEP varchar(10) not null,
Rua nvarchar(100) not null,
--fk ID_Bairro int ok
Referencia nvarchar(100),
Complementi nvarchar (100) not null,
)

go
create table Aluno(
ID_Aluno int primary key identity,
--fk ID_Contratante int OK
--fk ID_Motorista int OK
--fk ID_Escola int OK
Nome nvarchar(100) not null,
Sobrenome nvarchar(100) not null,
DataNasci varchar(10) not null
--fk ID_Telefone int OK
)
GO 
Alter table Aluno ADD FK_Contratante_A int
Go 
alter table Aluno ADD FK_Motorista_A int
GO 
Alter table Aluno ADD FK_Escola_A int
Go 
Alter table Aluno ADD FK_Telefone_A int
Go 
alter table Aluno ADD foreign key (FK_Contratante_A) references Contratante(ID_Contratante)
GO 
alter table Aluno ADD foreign key (FK_Motorista_A) references Motorista(ID_Motorista)
GO 
alter table Aluno ADD foreign key (FK_Escola_A) references Escola(ID_Escola)
GO 
Alter table Aluno ADD foreign key (FK_Telefone_A) references Telefone(ID_Telefone)

go
create table Contratante(
ID_Contratante int primary key identity,
NomeContratante nvarchar(100) not null,
SobrenomeContratante nvarchar(100) not null,
EnderecoContratante nvarchar(100) not null,
CPFContratante varchar(15) not null unique,
EmailContratante varchar(250) not null unique,
--FK ID_Telefone int OK,
)
GO
Alter table Contratante ADD FK_Telefone_Con int
GO
Alter table Contratante ADD foreign key (FK_Telefone_Con) references Telefone(ID_Telefone)

go
create table Telefone(
ID_Telefone int primary key identity,
Telefone varchar(40) not null,
)

go
create table Telefone_Aluno(
FK_Telefone int,
FK_Aluno int,
)

GO
ALTER TABLE Telefone_aluno
ADD foreign key (FK_Telefone) references Telefone(ID_Telefone)
go
alter table Telefone_aluno
ADD foreign key (FK_Aluno) references Aluno(ID_Aluno)

go
create table Telefone_Motorista(
FK_Telefone_m int,
FK_Aluno_m int,
)

GO
ALTER TABLE Telefone_Motorista
ADD foreign key (FK_Telefone_m) references Telefone(ID_Telefone)
go
alter table Telefone_Motorista
ADD foreign key (FK_Aluno_m) references Aluno(ID_Aluno)

go
create table Telefone_Contratante(
FK_Telefone_c int,
FK_Aluno_c int,
)
GO
ALTER TABLE Telefone_Contratante
ADD foreign key (FK_Telefone_c) references Telefone(ID_Telefone)
go
alter table Telefone_Contratante
ADD foreign key (FK_Aluno_c) references Aluno(ID_Aluno)

go
create table Escola(
ID_Escola int primary key identity,
NomeEscola nvarchar(100) not null,
FK_Endereco int
)

go
alter table Escola
Add foreign key (FK_Endereco) references Endereco(ID_Endereco)

go
Create table Motorista_Escola(
FK_Motorista int,
FK_Escola int,
)

go 
alter table Motorista_Escola
ADD foreign key (FK_Motorista) references Motorista(ID_Motorista)
go
alter table Motorista_Escola
ADD foreign key (FK_Escola) references Escola(ID_Escola)

GO
create table Endereco_Aluno(
FK_Aluno int,
FK_Endereco int,
)
GO
alter table Endereco_Aluno
ADD foreign key (FK_Aluno) references Aluno(ID_Aluno)
GO
alter table Endereco_Aluno
ADD foreign key (FK_Endereco) references Endereco(ID_Endereco)

GO
Create table Endereco_Motorista(
FK_Motorista int,
FK_Endereco int,
)
go
alter table Endereco_Motorista
ADD foreign key (FK_Motorista) references Motorista(ID_Motorista)
GO
alter table Endereco_Motorista
ADD foreign key (FK_Endereco) references Endereco(ID_Endereco)

GO
create table Bairro(
ID_Bairro int primary key identity,
Nome_Bairro varchar(30) not null,
FK_Cidade int,
)

GO
Create table Cidade(
ID_Cidade int primary key identity,
NomeCidade nvarchar(100) not null,
)

GO
alter table Bairro
add foreign key (FK_Cidade) references Cidade(ID_Cidade)

GO
alter table Endereco
ADD FK_Bairro_E int
GO
alter table Endereco
ADD foreign key (FK_Bairro_E) references Bairro(ID_Bairro)

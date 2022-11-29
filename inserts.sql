--Inserções

--Ordem de Execução:
--Executar primeiramente todos as instruções de 'Insert Into',após a execução do mesmo,executar as intruções de 'UPDATE'. 


--Tabela Aluno

select * from aluno
insert into Aluno (Nome,Sobrenome,DataNasci)
values('John','Doe','09/09/1999');

update Aluno
Set FK_Motorista_A=1
where ID_Aluno=1

Update Aluno 
Set FK_Escola_A = 3
where ID_Aluno = 3

Update Aluno
set FK_Contratante_A = 1
where ID_Aluno = 1

insert into Aluno(Nome,Sobrenome,DataNasci)
Values('Jane','Doe','08/09/2000');

update Aluno
Set FK_Motorista_A=2
where ID_Aluno=2

Update Aluno 
Set FK_Escola_A = 2
where ID_Aluno = 2

Update Aluno
set FK_Contratante_A = 2
where ID_Aluno = 2

insert into Aluno(Nome,Sobrenome,DataNasci)
Values('João','Silva','12/01/2004');

update Aluno
Set FK_Motorista_A=3
where ID_Aluno=3

Update Aluno 
Set FK_Escola_A = 1
where ID_Aluno = 1

Update Aluno
set FK_Contratante_A = 3
where ID_Aluno = 3



--Tabela Motorista

Insert into Motorista(NomeMotorista,SobrenomeMotorista,CPFMotorista,EmailMotorista,ContaBanco)
Values('João','Paulo','000.000.000-00','~joaoContato@Gmail.com','00000-0');

update Motorista
set FK_Veiculo_m = 1
where ID_Motorista = 1

update Motorista 
set FK_Escola_m = 1
where ID_Motorista = 1

update Motorista
set FK_Telefone_m = 4
where ID_Motorista = 1

Insert into Motorista(NomeMotorista,SobrenomeMotorista,CPFMotorista,EmailMotorista,ContaBanco)
Values('Marcos','Silva','111.111.111-11','~contaMarcos@Gmail.com','11111-1');

update Motorista
set FK_Veiculo_m = 2
where ID_Motorista = 2

update Motorista 
set FK_Escola_m = 2
where ID_Motorista = 2

update Motorista
set FK_Telefone_m = 5
where ID_Motorista = 2

Insert into Motorista(NomeMotorista,SobrenomeMotorista,CPFMotorista,EmailMotorista,ContaBanco)
Values('Carlos','Moraes','222.222.222-22','carlos_moraes@hotmail.com.com','22222-2');

update Motorista
set FK_Veiculo_m = 7
where ID_Motorista = 3

update Motorista 
set FK_Escola_m = 3
where ID_Motorista = 3

update Motorista
set FK_Telefone_m = 6
where ID_Motorista = 3



--tabela Escola

insert into Escola(NomeEscola)
Values('Escola Estadual Prefeito Caetano Munhoz');

insert into Escola(NomeEscola)
Values('Fatec Itapira Ogari Castro de Pacheco');

insert into Escola(NomeEscola)
Values('Caetano Munhoz');



--Tabela Veiculo

insert into Veiculo (PlacaVeiculo,Modelo,Marca,Ano,Capacidade) 
values('abc-1d23','Sprinter','Mercedes','2022',19);


insert into Veiculo (PlacaVeiculo,Modelo,Marca,Ano,Capacidade) 
values('aaa-2s44','Citroen','Jumper','2004',15);

insert into Veiculo (PlacaVeiculo,Modelo,Marca,Ano,Capacidade) 
values('ddd-4a66','Toyota','Hiace','2005',14);

--Tabela Telefone

insert into Telefone(Telefone)
values('(19)99999-8888');
go

insert into Telefone(Telefone)
values('(19)77777-6666');
go
insert into Telefone(Telefone)
values('(19)22222-4444');
go
insert into Telefone(Telefone)
values('(19)11111-2222');
go
insert into Telefone(Telefone)
values('(19)33333-9999');
go
insert into Telefone(Telefone)
values('(19)77777-9999');
go
insert into Telefone(Telefone)
values('(19)12121-2424');
go
insert into Telefone(Telefone)
values('(19)69696-5555');
go
insert into Telefone(Telefone)
values('(19)87878-2121');
go
insert into Telefone(Telefone)
values('(19)10101-3333');

--Tabela Contratante

select * from Contratante

insert into Contratante(NomeContratante,SobrenomeContratante,EnderecoContratante,CPFContratante,EmailContratante,FK_Telefone_Con)
values('Joaquim','Silva','Rua TAl numero 5','111.111.222-33','JoaquimTexeiraSilva@yahoo.com,',1);

insert into Contratante(NomeContratante,SobrenomeContratante,EnderecoContratante,CPFContratante,EmailContratante,FK_Telefone_Con)
values('Clarice','Linspector','Rua X numero 88','777.777.767-88','linspector_clarice@mail.ru,',2);

insert into Contratante(NomeContratante,SobrenomeContratante,EnderecoContratante,CPFContratante,EmailContratante,FK_Telefone_Con)
values('Arthur','Pendragon','Rua Y numero 1203','333.222.111-44','cupoftea@gmail.com,',3);

--Tabelas Endereço

select * from Endereco

insert into Endereco(CEP,Rua,referencia,Complementi)
values('11111111','Rua TAl','Proximo ao mercado','casa');

insert into Endereco(CEP,Rua,referencia,Complementi)
values('22222-222','Rua TAl','Proximo ao cartorio','apartamento');


insert into Endereco(CEP,Rua,referencia,Complementi)
values('11111111','Rua TAl','Proximo ao mercado','casa');











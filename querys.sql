--Consultas

--Consulta 1

select NomeMotorista+' '+SobrenomeMotorista as 'Nome Completo',PlacaVeiculo,Marca,Modelo,Capacidade,Ano 
from Motorista join Veiculo on Motorista.FK_Veiculo_m=Veiculo.ID_Veiculo 
order by Ano desc
--Consulta 2

Select NomeContratante+' '+SobrenomeContratante as 'Nome Completo',EnderecoContratante as Endereco,CPFContratante as CPF,Telefone 
from Contratante join Telefone on Contratante.FK_Telefone_Con=Telefone.ID_Telefone 

--Consulta 3

select *
From Veiculo
order by Modelo asc

--consulta 4

select count(Nome)
from Aluno

--Consulta 5

select avg(Ano) as 'Media de Ano de fabricação dos veiculos'
from Veiculo

--Consulta 6

Select Modelo+' '+Marca 'Veiculo mais Antigo'
From veiculo
where Ano=(select min(ano) from Veiculo)

--Consulta 7

select Nome+' '+Sobrenome as 'Nome Aluno',NomeMotorista+' '+SobrenomeMotorista as 'Nome Motorista' 
from Aluno join Motorista on Aluno.FK_Motorista_A=Motorista.ID_Motorista
where NomeMotorista=(select NomeMotorista 
from Motorista 
where ID_Motorista=1)





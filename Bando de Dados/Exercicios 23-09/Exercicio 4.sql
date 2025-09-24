create database Cadastro_Funcionarios

use Cadastro_Funcionarios;

create table Funcionario(
 IdFunc int primary key,
 Nome Nvarchar (100),
 Cargo Nvarchar (40),
 Salario decimal(20,2)
 );

 insert into Funcionario (IdFunc, Nome, Cargo, Salario) values
 (1, 'Ana Silva', 'Gerente de Projetos', 8500.00),
(2, 'Bruno Costa', 'Desenvolvedor', 5200.00),
(3, 'Carla Souza', 'Analista de Marketing', 4300.00),
(4, 'Diego Martins', 'Designer Gráfico', 3900.00),
(5, 'Fernanda Lima', 'Recursos Humanos', 4700.00),
(6, 'Gustavo Alves', 'Diretor Financeiro', 12000.00),
(7, 'Helena Duarte', 'Atendente de Suporte', 2800.00),
(8, 'Igor Ferreira', 'Engenheiro de Software', 7300.00),
(9, 'Juliana Ramos', 'Coordenadora de Vendas', 6400.00),
(10, 'Lucas Pires', 'Estagiário', 1500.00),
(11, 'Mariana Rocha', 'Analista de Dados', 5600.00),
(12, 'Pedro Nogueira', 'Administrador de Redes', 6000.00);

select * from funcionario
where salario > 3000.00

select * from funcionario
where cargo like 'Analista de Dados'

Select Nome,Cargo from Funcionario
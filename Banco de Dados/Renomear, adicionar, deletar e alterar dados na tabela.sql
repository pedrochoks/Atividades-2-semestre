use loja

create table Cliente(
	ClienteId int identity(100, 1),
	Nome varchar(100) NOT NULL, 
	Email varchar(100) unique,
	constraint Pk_Cliente primary key (ClienteId)
	--PK: Primary Key
);

create table Pedido (
	PedidoId int identity (100, 1),
	DataPedido date not null, 
	Valor decimal(10, 2),
	ClienteId int, 
	Constraint Pk_Pedido primary key (PedidoId),
	Constraint Fk_Pedido foreign key (ClienteId)
	references Cliente(ClienteId)
	--FK: foreign key
);

insert into cliente values -- (Nome, Email)
('Thiago Augusto', 'titi@senai.com'),
('Kessia Milena', NULL),
('Odirlei', 'odirlei@senai.coim')

insert into Pedido values -- (DataPedido, Valor, CLienteId)
('2025-10-01', '100.80', 100),
('2025-09-10', '49.99', 100),
('2025-09-23', '350.00', 101)

select * from Cliente;
select * from Pedido;

-- Ajustar email de cliente
update CLiente set email = 'kessia@senai.com'
where CLienteId = 101;

-- Atualizar o valor de um pedido
select * from Pedido;
update Pedido Set Valor = Valor + '10.00'
where PedidoId = 101
select * from Pedido;

--Renomear a tabela cliente para funcionario
exec sp_rename 'Cliente', 'Funcionario';

select * from Funcionario

--Renomear a coluna ClienteId -> FuncionarioId
exec sp_rename 'Funcionario.ClienteId', 'Funcionario.FuncionarioId', 'COLUMN';

select * from Funcionario

--Alterar tamanho do tipo de dado
alter table funcionario
alter column Nome varchar(150) not null;

-- ver a estrutura da tabela
exec sp_help 'Funcionario';

--Deletar im funcionario
delete Funcionario
where Funcioraio = 100

-- Apagando a chave primaria da tabela pedi
alter table pedido
drop constraint PK_Pedido;

select * from Pedido

-- Recriando a chave primaria
alter table Pedido
ADD Constraint PK_Pedido primary key (PedidoId)

-- Alterar tabela Pedido
-- On delete cascade

Alter table Pedido
Drop constraint FK_Pedido

-- REcriar FK com ON delete cascade
alter table Pedido
Add constraint FK_Pedido_CLiente
foreign key (ClienteId) References Funcionario (FuncionarioId)
on delete cascade

select * from Funcionario
select * from Pedido

-- Delete um Funcionario
Delete Funcionario
Where FuncionarioId = 101

-- Adicionar novas colunas
alter table Funcionario
add Cargo varchar(50)

select * from Funcionario
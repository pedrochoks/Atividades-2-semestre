-- Triggers

-- Trigger 1: Auditoria Clientes inseridos
create table Auditoria_Cliente (
	AuditoriaId int identity primary key,
	ClienteId int foreign key references Cliente(CLienteId),
	DataInsercao date
)

create trigger trg_AuditoriaCliente
ON Cliente -- Tabela que vai disparar a trigger
after insert
as
begin
	set nocount on
	insert into Auditoria_Cliente (ClienteId, DataInsercao)
	select ClienteId, DateADD(HOUR, -3, SYSUTCDATETIME())
	from inserted
	-- Armazena insert e update de forma temporaria
end

--TESTANDO TRIGGER:
insert into Cliente(Nome, Sobrenome, Email, Telefone, DataCadastro)
values
('Carlos', 'Pereira', 'carlos@email.com', '11999999999', '2025-10-14')

select * from Auditoria_Cliente;
select * from Cliente;

-- Trigger 2: Atualizar estoque ao inserir um pedido
CREATE TRIGGER trg_AtualizarEstoque
ON DEtalhesPedido
after insert
as
begin
	set nocount on
	update Produto
		Set QuantidadeEstoque = QuantidadeEstoque - i.Quantidade
		from Produto p
		join inserted i on p.ProdutoID = i.ProdutoID
end


-- Testando trigger
SELECT * FROM Produto
SELECT * FROM Pedido
SELECT * FROM DetalhesPedido

insert into DetalhesPedido (PedidoID, ProdutoID, Quantidade, PrecoUnitario)
values
(1, 2, 3, 75.00)


-- trigger 3: Prevenir exclusao de produto com pedidos
create trigger trg_PrevenirExclusaoProdutos
on Produto
instead of delete -- ao inves de deletar
as
begin
	set nocount on
	IF EXISTS (
		Select 1
			From DetalhesPedido dp
			join deleted d on dp.ProdutoID = d.ProdutoID
	)
	begin
		raiserror('Nao e possivel excluir produto com pedidos associados', 16, 1)
		-- codigo de erro do usuario.
	end

	delete from Produto
	WHERE ProdutoId in (Select ProdutoID FROM deleted)
end

--Testando trigger:
delete from Produto WHERE ProdutoId = 2 -- Tem que dar erro se caso houver produto associado ao pedido


-- Trigger 4: Criar log de funcionarios
create table Funcionario(
	FuncionarioId int identity primary key,
	Nome varchar(100),
	CPF VARCHAR(14) unique
)
create table LogFuncionario (
	LogId int identity primary key,
	FuncionarioId int foreign key references Funcionario(FuncionarioId),
	Nome VARCHAR(100),
	DataCadastro datetime2(0) default dateadd(HOUR, -3, sysutcdatetime())
)

create trigger trg_LogFuncionario
on Funcionario
after insert
as
begin
	set nocount on
	insert into logFuncionario (FuncionarioId, Nome)
	select FuncionarioId, Nome FROM inserted
end

insert into Funcionario (Nome, CPF)
values ('Kessia', '13312548555')

select * FROM Funcionario
select * from LogFuncionario

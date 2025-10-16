use VendasOnline
-- Procedures

--Procedure 1: Inserir CLientes
Create Procedure InserirCliente
@Nome Varchar(50),
@Sobrenome VARCHAR(50),
@Email varchar(100),
@Telefone VARCHAR(20),
@DataCadastro DATE

As
Begin
	Set nocount on; --Nao mostra as infromacoes de linhas afetadas.
	insert into Cliente(Nome, Sobrenome, Email, Telefone, DataCadastro)
	values (@Nome, @Sobrenome, @Email, @Telefone, @DataCadastro)
end

-- Testando procedure
Exec InserirCliente 'Ana', 'Souza', 'ana@email.com', '11999999999', '2025-10-13'

SELECT * FROM Cliente;

-- Procedure 2: Inserir Pedido
Create Procedure InserirPedido
	@ClienteId int,
	@DataPedido DATE,
	@ValorTotal DECIMAL(10,2),
	@StatusId int

as
begin
	Set nocount on
	insert into Pedido (ClienteId, DataPedido, ValorTotal, StatusId)
	values(@ClienteId, @DataPedido, @ValorTotal, @StatusId)
end

-- Testando Procedure:
exec InserirPedido 2, '2025-10-13', 250.00, 1;

select * from Pedido;

-- Procedure 3: Atualizar o preco de produto
Create Procedure AtualizarPrecoProduto
	@ProdutoId int,
	@PercentualAumento Decimal(5,2)
as
begin
	set nocount on 
	update Produto
		set Preco = Preco * (1 + @PercentualAumento / 100.0)
	where ProdutoId = @ProdutoId;
end

-- Testando Procedure
select * from Produto;
EXEC AtualizarPrecoProduto 2, 10
Select * from Produto;

-- Procedure 4: Total de vendas por cliente (saida)
create procedure ObterTotalVendas
	@ClienteId INT,
	@TotalVendas Decimal(10,2) OUTPUT
AS
BEGIN
	Set NOCOUNT ON
	SELECT @TotalVendas = coalesce(sum(ValorTotal),0)
	-- Substitui valores nulos por zero
	from Pedido
	Where ClienteId = @ClienteId
END

-- Testando Procedure:
declare @Total Decimal(10,2)
EXEC ObterTotalVendas 1, @Total OUTPUT;
SELECT @Total As TotalDeVendas

select * from Pedido
Where ClienteId = 2

-- Procedure 5: Relatorio de vendas por cliente
create procedure VendasPorCliente
	@DataLimite Date
as
begin
	Set nocount on

	select C.ClienteId, C.Nome,
	SUM(D.Quantidade * D.PrecoUnitario) AS TotalGasto
	From Cliente C
	join Pedido P			ON P.ClienteId = C.ClienteId
	join DetalhesPedido D	ON D.PedidoId = P.PedidoId
	Where P.DataPedido < @DataLimite
	group by C.ClienteId, C.Nome
end

-- Testando Procedure
Insert into DetalhesPedido (PedidoId, ProdutoId, Quantidade, PrecoUnitario)
values
(1, 1, 1, 4500.00)

SELECT * FROM Pedido

Exec VendasPorCliente '2025-10-14'

-- Procedure 6: Historico de preco com tabela propria

create table HistoricoPrecos (
	HistoricoId INT IDENTITY PRIMARY KEY,
	ProdutoId INT FOREIGN KEY REFERENCES Produto(ProdutoId),
	PrecoAntigo Decimal(10,2),
	PrecoNovo Decimal(10,2),
	DataModificacao date
);

Create Procedure AtualizarPrecoProdutoComHistorico
	@ProdutoId int,
	@NovoPreco decimal(10,2)
as
begin
	set nocount on
	Declare @PrecoAntigo decimal(10,2)

	SELECT @PrecoAntigo = preco
	FROM Produto
	Where ProdutoId = @ProdutoId;

	UPDATE Produto set Preco = @NovoPreco
	Where ProdutoId = @ProdutoId
	
	INSERT INTO HistoricoPrecos 
	(ProdutoId,PrecoAntigo, PrecoNovo, DataModificacao)
	values (@ProdutoId, @PrecoAntigo, @NovoPreco, 
	DateADD(hour, -3, SYSUTCDATETIME()))
end

--Testando Procedure:
exec AtualizarPrecoProdutoComHistorico 2, 75.00

select * From Produto
select * FROM HistoricoPrecos;

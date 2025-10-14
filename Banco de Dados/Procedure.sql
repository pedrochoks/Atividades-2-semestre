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
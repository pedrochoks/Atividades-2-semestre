create database SistemaPedidoSimples;
use SistemaPedidoSimples;

create table Pedido2(
	IdPedido int primary key,
	Client nvarchar(100),
	Produto nvarchar(100),
	Quantidade int
	);

	insert into Pedido2 (IdPedido, Client, Produto, Quantidade)values
	(1, 'Ana Silva', 'Pizza de Calabresa', 1),
(2, 'Bruno Costa', 'Hambúrguer', 2),
(3, 'Carla Souza', 'Pizza de Calabresa', 1),
(4, 'Diego Martins', 'Refrigerante Lata', 3),
(5, 'Fernanda Lima', 'Salada Caesar', 1),
(6, 'Gustavo Alves', 'Hambúrguer', 1),
(7, 'Helena Duarte', 'Pizza de Calabresa', 2),
(8, 'Igor Ferreira', 'Refrigerante Lata', 1),
(9, 'Juliana Ramos', 'Hambúrguer', 3),
(10, 'Lucas Pires', 'Pizza', 4);
select * from Pedido2

select * from Pedido2
where Client like 'Lucas Pires'

select * from pedido2
where Produto like 'Pizza de Calabresa'

select Client, Quantidade from Pedido2
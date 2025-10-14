Create database AurumLab;

use AurumLab;
Create table Regra (
	IdRegra int identity(1,1) primary key,
	Nome Varchar(40) not null unique
);

Create table Usuario (
	IdUsuario		int identity(1,1) primary key,
	NomeCompleto	NVARCHAR(200) not null,
	Email			NVARCHAR(150) not null unique,
	Senha			VARBINARY(32) not null, --Armazena a hash da senha
	FotoURL			NVARCHAR (500) null, -- armazena o caminho da url da imagem
	CriadoEm		DATETIME2(0) not null DEFAULT DATEADD(HOUR, -3, SYSUTCDATETIME()),
	-- Zero casas decimais de segundos
	RegraId			int not null, 
	CONSTRAINT FK_Usuario_Regra foreign key (RegraId) references Regra(IdRegra)
);
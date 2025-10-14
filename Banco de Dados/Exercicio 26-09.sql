CREATE DATABASE Clinica_Medica;
GO

USE Clinica_Medica;
GO

-- TABELA PACIENTE
CREATE TABLE Paciente(
	CPF VARCHAR(14) PRIMARY KEY,
	Nome VARCHAR(40),
	Telefone VARCHAR(30),
	NumeroPlano INT,
	NomePlano VARCHAR(20),
	TipoPlano VARCHAR(10)
);
GO

-- TABELA MEDICO
CREATE TABLE Medico(
	CRM INT PRIMARY KEY,
	NomeMedico VARCHAR(30),
	Especialidade VARCHAR(20)
);
GO

-- TABELA CONSULTA
CREATE TABLE Consulta (
	NumeroConsulta INT PRIMARY KEY IDENTITY(100, 1), -- (valor inicial, incremento)
	DataConsulta DATE,
	HorarioConsulta TIME,
	CRM_Medico INT FOREIGN KEY REFERENCES Medico(CRM),
	CPF_Paciente VARCHAR(14) FOREIGN KEY REFERENCES Paciente(CPF)
);
GO
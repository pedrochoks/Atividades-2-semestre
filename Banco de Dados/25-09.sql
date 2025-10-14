select * from paciente
select * from medico
select * from consulta


insert into paciente (CPF, Nome, Telefone, NumeroPlano, NomePlano, TipoPlano) values
('123.456.789-01','Ana Beatriz Silva', '98123-4567',1001,'Essencial','Individual'),
('987.654.321-00','Carlos Eduardo Ramos', '97654-3210',2005,'Ouro','Familiar'),
('456.123.789-22','Mariana Costa', '99123-7788',	3002,'Platinum',	'Familiar'),
('321.987.654-33','João Pedro Oliveira', '97012-3344',	1108,	'Total',	'Individual'),
('852.369.741-44','Luísa Fernandes',	'96600-1122',	4500,	'Sorriso',	'Individual'),
('741.258.963-55','Rodrigo Alves', '98201-9987',	2203,	'Bronze','	Familiar'),
('159.753.486-66','Beatriz Menezes',	'94004-2002',	3307,	'Flex',	'Estudantil'),
('963.852.741-77','Felipe Moreira',	'93300-4455',	5050,'Mastere','Familiar');

update paciente set TipoPlano = 'Familiar' where CPF = '741.258.963-55'

insert into Medico (CRM, NomeMedico, Especialidade) values
(12345,	'Dr. Ricardo Martins',	'Cardiologia'),
(67890,	'Dra. Juliana Pereira',	'Pediatria'),
(11223,	'Dr. Marcelo Costa',	'Ortopedia'),
(44556,	'Dra. Fernanda Alves',	'Ginecologia'),
(77889,	'Dr. André Souza',	'Neurologia'),
(99100,	'Dra. Camila Rocha',	'Dermatologia'),
(22334,	'Dr. Paulo Henrique Lima',	'Clínica Geral');

insert into consulta (DataConsulta, HorarioConsulta, CRM_Medico, CPF_Paciente) values
('2025-10-01',	'09:00',	12345,	'123.456.789-01'),
('2025-10-01',	'10:30',	67890,	'987.654.321-00'),
('2025-10-02',	'14:00',	11223,	'456.123.789-22'),
('2025-10-02',  '15:15',	44556,	'321.987.654-33'),
('2025-10-03',	'08:45',	77889,	'852.369.741-44'),
('2025-10-03',	'11:00',	99100,	'741.258.963-55'),
('2025-10-04',	'13:30',	22334,	'159.753.486-66'),
('2025-10-04',	'16:00',	12345,	'963.852.741-77');

select * from paciente;
select NomeMedico, Especialidade from Medico;
select * from consulta;
select CPF from Paciente;
select CRM from medico;

update paciente set NumeroPlano = 2343 where CPF = '987.654.321-00'
update paciente set NumeroPlano = 9318 where CPF = '741.258.963-55'
update paciente set NumeroPlano = 3781 where CPF = '321.987.654-33'

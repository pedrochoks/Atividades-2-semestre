use Clinica_Medica
--left join
select c.dataConsulta, m.NomeMedico, p.Nome as 'Nome Paciente'
From Paciente p
left join Consulta c On p.CPF = c.CPF_Paciente
left join Medico m ON c.CRM_Medico = m.CRM

--right join
select m.NomeMedico, m.Especialidade, c.DataConsulta, p.Nome
Fromm (Consulta c right join Medico m On c.CRM_Medico = m.CRM)
--right join Paciente p On c.CPF_Paciente = p.CPF
select = m.NomeMedico, m.Especialidade, c.DataConsulta --, p.Nome
from (Consulta c right join Medico m ON c.CRM_Medico = m.CRM)
-- right join Paciente p ON c.CPF_Paciete = p.CPF

CREATE TABLE MedicosInformacoes (
IDTabelaMedicos INTEGER PRIMARY KEY AUTOINCREMENT,
NomeMedicos TEXT NOT NULL,
IdMedico INTEGER NOT NULL UNIQUE,
AreaAtuacao TEXT NOT  NULL
);

CREATE TABLE PacienteInformacoes (
IDTabelaPacientesInformacoes INTEGER PRIMARY KEY AUTOINCREMENT,
NomePaciente TEXT NOT NULL,
IdPaciente INTEGER NOT NULL UNIQUE
);

CREATE TABLE ConsultaInformacoes (
IDTabelaConsultaInformacoes INTEGER PRIMARY KEY AUTOINCREMENT,
IdMedico INTEGER NOT NULL,
IdPaciente INTEGER NOT NULL,
TipoConsulta TEXT NOT NULL,
DataConsulta datetime NOT NULL,
HorarioConsulta TEXT NOT NULL
);

INSERT INTO ConsultaInformacoes ( IdMedico, IdPaciente, TipoConsulta, DataConsulta, HorarioConsulta)
VALUES ('M000001','P000001','Audiologia','20/04/2026','15:30'), ('M000001','P000002','Audiologia','25/04/2026','14:00'

INSERT INTO MedicosInformacoes ( NomeMedicos, IdMedico, AreaAtuacao)
VALUES ('Fabio Leonel','M000001','Audiologia');

INSERT INTO PacienteInformacoes ( NomePaciente, IdPaciente)
VALUES ('Pedro Antone','P000001'), ('Carlos Leopoldo','P000002');

SELECT * 
FROM ConsultaInformacoes
WHERE IdMedico = 'M000001';

DELETE FROM ConsultaInformacoes
WHERE IdPaciente = 'P000002' AND DataConsulta = '2026-04-25';


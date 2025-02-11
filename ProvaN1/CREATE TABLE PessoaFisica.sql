CREATE TABLE PessoaFisica(
	Codigo INT NOT NULL IDENTITY(1,1),
	Nome VARCHAR(MAX) NOT NULL,
	Email VARCHAR(MAX) NOT NULL,
	[Site] VARCHAR(MAX) NULL,
	Cpf VARCHAR(11) NOT NULL,
	Rg VARCHAR(11) NOT NULL,
	Sexo CHAR(1) NOT NULL,
	Raca VARCHAR(MAX) NOT NULL,
	Naturalidade VARCHAR(MAX) NOT NULL,
	Nacionalidade VARCHAR(MAX) NOT NULL,
	NomePai VARCHAR(MAX) NOT NULL,
	NomeMae VARCHAR(MAX) NOT NULL,
	DataInclusao DATETIME NULL DEFAULT(GETDATE()),
	CONSTRAINT PK_PessoaFisica PRIMARY KEY (Codigo ASC)
)
GO